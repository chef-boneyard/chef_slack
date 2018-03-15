# chef_slack CHANGELOG

This file is used to list changes made in each version of the chef_slack cookbook.

## 3.1.2 (2018-03-15)

- Resolve the new FC118 foodcritic warning
- Resolve a Chef 14 deprecation warning

## 3.1.1 (2017-09-01)

- Update README.md to fix property names
- Test with Local Delivery and not Rake
- Add a basic chefspec test
- Update apache2 license string to be a SPDX compliant string
- Add chef_version compatibility with older chef releases
- Enabled Foodcritic FC016 again
- Remove maintainer files
- Update kitchen config and use dokken-images in the kitchen dokken config
- Require Chef 12.7 to workaround custom resource issues

## 3.1.0 (2017-02-21)

- Add icon_emoji property
- add icon_emoji to test recipe

## 3.0.0 (2017-02-14)

- Require Chef 12.5 and remove compat_resource

## 2.0.0 (2016-10-11)
- Convert LWRP to a custom resource and use compat_resource cookbook for Chef 12.1+ compatibility
- Properly support why-run mode now
- Add a test recipe to ensure notifications actually work
- Dynamically install the gem within the resource and deprecate the use of the default recipe
- Properly support notification when channels aren't specified
- Properly notify the update on the resource when the notify occurs

## v1.0.0 (2016-09-15)
- Require Chef 12.1
- Testing updates

## 0.2.0

- Initial push to supermarket
- Add linting / integration testing in Travis
- Add maintainers docs, contributing docs, and testing docs
- Add license headers to files
- Add a Berksfile
- Added additional platforms to the metadata
- Add issues_url, source_url and chef_version to the metadata
- Add a chefignore file to limit files uploaded to the chef server
- Attribute the original work in the readme

## 0.1.0

- [Ian Henry] - Initial release of slack
