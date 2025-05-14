<?php
$main = get_query_var('main') ?: "main";
$should_import_swiper = is_archive() || is_single() || is_home();
?>
<!DOCTYPE html>
<html lang="ja">

<head>
  <meta charset="UTF-8">
  <link rel="icon" type="image/ico" href="<?= theme_uri() ?>favicon.ico">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <!-- <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1"> -->

  <link rel="stylesheet" href="<?= url(theme_uri()) ?>/assets/css/style.css">

  <?php if ($should_import_swiper): ?>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css">
  <?php endif; ?>

  <!-- Fonts - Noto Sans JP, Poppins, Monsterrat Roman -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100..900;1,100..900&family=Noto+Sans+JP:wght@100..900&family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">

  <base href="<?= url(theme_uri()) ?>">
  <?php wp_head() ?>
</head>