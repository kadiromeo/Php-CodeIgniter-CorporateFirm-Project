<section class="section-padding gray-brackground" id="portfolio">
    <div class="container">
        <div class="section-title">
            <h2>Our <span>Ürünler</span></h2>
            <span class="s-title-icon"><i class="icofont icofont-diamond"></i></span>
        </div>
        <div class="portfolio-content">
            <!-- Protfolio navbar -->
            <!--<div class="portfolio-filter-wrap text-center" >
                <ul class="portfolio-filter hover-style-one">
                    <li class="active"><a href="#" data-filter="*"> All</a></li>
                    <li><a href="#" data-filter=".cat1">WEB Design</a></li>
                    <li><a href="#" data-filter=".cat2">Mobile</a></li>
                    <li><a href="#" data-filter=".cat3">SEO</a></li>
                    <li><a href="#" data-filter=".cat4">Photography</a></li>
                    <li><a href="#" data-filter=".cat5">Development</a></li>
                </ul>
            </div>-->
            <div class="portfolio portfolio-gutter portfolio-style-2 portfolio-container portfolio-masonry portfolio-column-count-4 ">

                <!-- Single portfolio item -->
                <?php foreach ($projects as $row) { ?>
                <div class="portfolio-item cat1 cat3">
                    <div class="portfolio-item-content">
                        <div class="item-thumbnail">
                            <!-- Change the dummy image -->
                            <img src="uploads/<?php echo $row->image;?>" alt="">
                        </div>
                        <div class="portfolio-description">
                            <h4><a href="#" ><?php echo $row->title;?></a></h4>

                            <!-- Change the dummy image -->
                            <a href="uploads/<?php echo $row->image;?>" class="portfolio-gallery-set"><i class="fa fa-search-plus"></i></a><a target="_blank" href="#"><i class="fa fa-link"></i></a>
                        </div>
                    </div>
                </div>

                <?php } ?>



            </div>
            <div class="text-center">
                <a class="btn btn-default btn-style hvr-shutter-out-vertical" href="#">View More</a>
            </div>
        </div>
    </div>
</section>