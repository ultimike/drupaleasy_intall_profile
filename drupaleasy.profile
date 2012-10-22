<?php

/**
 * Implement hook_install().
 *
 * Perform actions to set up the site for this profile.
 */
function drupaleasy_install() {
  include_once DRUPAL_ROOT . '/profiles/standard/standard.install';
  standard_install();
}

/**
 * implements hook_form_FORM_ID_alter()
 */
function drupaleasy_form_install_configure_form_alter(&$form, &$form_state) {
  $form['site_information']['site_mail']['#default_value'] = 'manello@gmail.com'; 
  $form['admin_account']['account']['name']['#default_value'] = 'admin';
  $form['admin_account']['account']['mail']['#default_value'] = 'manello@gmail.com'; 
}