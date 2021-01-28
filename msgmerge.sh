#!/bin/bash

for ldir in locale/*/
do
    ldir=${ldir%*/}
    ldir=${ldir##*/}
    msgmerge locale/${ldir}/electrum.po locale/messages.pot > electrum.po
    mv electrum.po locale/${ldir}/
done
