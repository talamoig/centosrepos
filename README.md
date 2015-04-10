# centosrepos

#### Table of Contents

1. [Overview](#overview)
2. [Module Description - What the module does and why it is useful](#module-description)
3. [Setup - The basics of getting started with centosrepos](#setup)
    * [What centosrepos affects](#what-centosrepos-affects)
    * [Setup requirements](#setup-requirements)
    * [Beginning with centosrepos](#beginning-with-centosrepos)

## Overview

Puppet module to include the CentOS repository.

This module will tipically *not* be used in a CentOS system, but in any other RedHat-based system.

## Module Description

That is a very simple module. It creates a standard `/etc/yum.repos/CentOS-base.repo` file, with
each section enabled/disabled according to the parameters passed to the class. By default all the
CentOS repos will be disabled.

## Setup

### What centosrepos affects

* It creates the `/etc/yum.repos/CentOS-base.repo` file.


### Beginning with centosrepos

To create the CentOS repositories but will all repositories disabled do:

    class {'centosrepos':}

To enable only the base repo:

   class {'centosrepos':
       enable_base => true
   }

To enable base and extras:

   class {'centosrepos':
       enable_base   => true,
       enable_extras => true,
   }

The list of available CentOS repositories is:

 - base
 - updates
 - extras
 - plus
 - contrib

