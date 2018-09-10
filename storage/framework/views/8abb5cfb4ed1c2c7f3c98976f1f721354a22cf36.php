<section class="news-wraper">
    <div class="container">

        <div class="row m-t-40">
            <div class="col-xs-12 col-sm-8 col-md-8 col-lg-8">

                <section class="contact-info">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-6">
                                <h3>Contact Information</h3>
                                <p></p>
                                <table class="contact">
                                    <tbody>
                                    <tr>
                                        <th class="address">Address</th>
                                        <td><?php echo $contact['details']; ?></td>
                                    </tr>
                                    <tr>
                                        <th class="phone">Phone</th>
                                        <td><?php echo $contact['phone']; ?></td>
                                    </tr>
                                    <tr>
                                        <th class="email">E-mail</th>
                                        <td>
                                            <a href="mailto:<?php echo $contact['email']; ?>"><?php echo $contact['email']; ?></a>
                                        </td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                            <div class="col-md-6 m-b-20">
                                <h3>Post Us Message</h3>
                                <?php if (Session::has('success')): ?>
                                    <div class="alert alert-success fade in">
                                        <a href="#" class="close" data-dismiss="alert">&times;</a>
                                        <strong><?php echo Session::get('success'); ?></strong>
                                    </div>
                                <?php endif; ?>
                                <?php echo Form::vertical_open()->method('POST')->class('contact-form')->action('contacts/sendmail'); ?>


                                <div class="row">
                                    <div class="col-md-12">
                                        <?php echo Form::text('name', '')->required()->placeholder('Name'); ?>
                                    </div>
                                    <div class="col-md-12">
                                        <?php echo Form::text('email', '')->required()->placeholder('Email'); ?>
                                    </div>
                                    <div class="col-md-12">
                                        <?php echo Form::textarea('messages', '')->required()->placeholder('Message'); ?>

                                    </div>
                                </div>
                                <div class="row m-b-20">
                                    <div class="col-md-12">
                                        <button type="submit" class="btn btn-primary">Send Message</button>
                                    </div>
                                </div>
                                <?php echo Form::close(); ?>

                            </div>

                        </div>
                        <div class="row clear-fix mt30">
                            <div class="col-md-12">
                                <div id="map_canvas" style="height: 450px;width: 100%,margin-top:20px;"></div>
                            </div>
                        </div>


                    </div>
                </section>
            </div>
        </div>
    </div>
</section>
<script type="text/javascript">
    $(function () {
        var map, myLatlng;
        <?php if(!empty($contact->lat) && !empty($contact->lng)): ?>
        myLatlng = new google.maps.LatLng(<?php echo @$contact->lat; ?>,<?php echo @$contact->lng; ?>);
        <?php else: ?>
        myLatlng = new google.maps.LatLng(9.929789275194516, 76.27235919804684);
        <?php endif; ?>
        var myOptions = {
            zoom: 14,
            draggable: false,
            center: myLatlng,
            mapTypeId: google.maps.MapTypeId.ROADMAP
        }
        map = new google.maps.Map(document.getElementById("map_canvas"), myOptions);

        var marker = new google.maps.Marker({
            draggable: false,
            position: myLatlng,
            map: map,
            title: "<?php echo e($contact['city']); ?>"
        });

        var contentString = '<div id="content">' +
            '<div id="siteNotice">' +
            '</div>' +
            '<div id="bodyContent">' +
            '<p><b><?php echo e($contact->name); ?></b></p>' +
            '<p><?php echo e($contact->address_line1); ?></p>' +
            '<p><a href="mailto:<?php echo e($contact["email"]); ?>">' +
            '<?php echo e($contact["email"]); ?></a> ' +
            '</p>' +
            '</div>' +
            '</div>';
        var infowindow = new google.maps.InfoWindow({
            content: contentString
        });
        marker.addListener('click', function () {
            infowindow.open(map, marker);
        });
    })
</script> 