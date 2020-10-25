Simple Affiliate

The Simple Affiliate module hopes to give Drupal 8 site administrators the
ability to allow registered users to bring in more referrals and thereby
increasing the userbase.

Working.
The working of the module is very simple. A registered user will be able
to see a block with an affiliate link. The link will  have their userid
as referral id as the url component. These users can then share this
link to their target audience.

Any user that clicks on this link will have a cookie set in their browser
with the users unique id. If the user registers on the site with the cookie
still active, the new user account will be set as a referral to the account
of the person who shared this link.

Installation Steps

1. Download the module using composer. 

composer require 'drupal/simple_affiliate:1.x-dev

2. Go to admin/modules and enable Simple Affiliate after logging in as admin. 
3. Once the module is enabled - we need to place the block supplied by the module containing the user's affiliate link in the appropriate location on the site. Go to admin/structure/block and move to the desired location. For eg. Header. 
4. Click on Place block in the location you want and select - Simple Affiliate Referral Link Block from the link and click on Place block. The block should be now placed on the location
5. Users can copy paste this link and send it through different social channels/email. Anyone who clicks on this link will have the user set as the person who referred the user when the referral user registers on the site. (Provided they do not clear their cookies). 
6.  Different users will have links with different ids - The user id is set as the unique id. 
7. To track the users you can go to simple-affiliate-referrals.
