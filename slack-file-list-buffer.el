;;; slack-file-list-buffer.el ---                    -*- lexical-binding: t; -*-

;; Copyright (C) 2017  南優也

;; Author: 南優也 <yuyaminami@minamiyuuya-no-MacBook.local>
;; Keywords:

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;;

;;; Code:

(require 'eieio)
(require 'slack-room-buffer)

(defclass slack-file-list-buffer (slack-message-buffer) ())

(defmethod slack-buffer-name ((_this slack-file-list-buffer))
  (format "%s" (call-next-method)))

(defmethod slack-buffer-major-mode ((this slack-file-list-buffer))
  'slack-info-mode)

(defmethod slack-create-message-buffer ((room slack-file-room) team)
  (slack-file-list-buffer :room room :team team))

(provide 'slack-file-list-buffer)
;;; slack-file-list-buffer.el ends here
