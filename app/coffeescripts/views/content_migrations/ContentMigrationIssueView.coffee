#
# Copyright (C) 2013 - present Instructure, Inc.
#
# This file is part of Canvas.
#
# Canvas is free software: you can redistribute it and/or modify it under
# the terms of the GNU Affero General Public License as published by the Free
# Software Foundation, version 3 of the License.
#
# Canvas is distributed in the hope that it will be useful, but WITHOUT ANY
# WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR
# A PARTICULAR PURPOSE. See the GNU Affero General Public License for more
# details.
#
# You should have received a copy of the GNU Affero General Public License along
# with this program. If not, see <http://www.gnu.org/licenses/>.

import Backbone from 'Backbone'
import template from 'jst/content_migrations/ContentMigrationIssue'

export default class ContentMigrationIssueView extends Backbone.View
  className: 'clearfix row-fluid top-padding'
  template: template
  tagName: 'li'

  toJSON: ->
    json = super
    json.description = @model.get('description')
    json.fix_issue_url = @model.get('fix_issue_html_url')
    json
