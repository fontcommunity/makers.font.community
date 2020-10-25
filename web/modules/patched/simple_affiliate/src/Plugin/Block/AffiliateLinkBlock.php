<?php

namespace Drupal\simple_affiliate\Plugin\Block;

use Drupal\Core\Block\BlockBase;
use Drupal\Core\Url;

/**
 * Provides automatically generated affiliate link with user id.
 *
 * @Block(
 *   id = "simple_affiliate_referral_link",
 *   admin_label = @Translation("Simple Affiliate Referral Link Block"),
 * )
 */
class AffiliateLinkBlock extends BlockBase {

  /**
   * {@inheritdoc}
   */
  public function build() {

    // Getting the current used id.
    $user_id = \Drupal::currentUser()->id();

    // Generating the link from the route.
    $link = Url::fromRoute('simple_affiliate.settracking');
    $link = $link->toString();
    $host = \Drupal::request()->getSchemeAndHttpHost();
    return [
      '#markup' => 'Your affiliate referral link: <code>' . $host . $link . '/' . $user_id . ' </code> Check your referral count <a href = "/my-refs">here.</a>',
      '#prefix' => '<div class = "mb-3>',
      '#suffix' => '</div>',
      '#attributes' => [
        'style' => ['text-shadow: none; margin-bottom: 30px']
      ]
    ];
  }

  public function getRefCount(){

  }

}
