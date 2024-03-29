﻿# Copyright (c) 2017 Chocolatey Software, Inc.
# Copyright (c) 2013 - 2017 Lawrence Gripper & original authors/contributors from https://github.com/chocolatey/cChoco
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

#---------------------------------#
# Pester tests for cChocoInstall  #
#---------------------------------#
Describe "Testing cChocoInstaller" {
  BeforeAll {
    $ModuleUnderTest = "cChocoInstaller"

    Import-Module $PSScriptRoot\..\DSCResources\$($ModuleUnderTest)\$($ModuleUnderTest).psm1 -Force

    if (-not (Get-Command choco -ErrorAction SilentlyContinue)) {
      function global:choco {}
    }
  }
  
  AfterAll {
    Remove-Module $ModuleUnderTest
  }

  Context “Testing 'Get-TargetResource'” {
    It 'DummyTest $true should be $true' {
      $true | Should -Be $true
    }
  }
}
