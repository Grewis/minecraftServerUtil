#!/usr/bin/env bash


zip -r "backup_minecraft.zip"  minecraft_server && ./dropbox_uploader.sh delete backup_minecraft.zip &&./dropbox_uploader.sh upload backup_minecraft.zip backup_minecraft.zip