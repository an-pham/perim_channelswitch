install: #switcher_ui-vi.mo
	install switcher switcher_ui /usr/local/bin
	which gdialog >/dev/null 2>&1 || install gdialog /usr/local/bin
	grep -q "`cat switcher.services`" /etc/services || cat switcher.services >> /etc/services
	install switcher.xinetd /etc/xinetd.d/switcher
	ln -sf /usr/local/bin/switcher_ui /usr/local/bin/nswitcher_ui
	# install switcher_ui-vi.mo /usr/share/locale/vi/LC_MESSAGES/switcher_ui.mo

switcher_ui.pot: switcher_ui
	xgettext -o switcher_ui.pot -L Shell switcher_ui

switcher_ui-vi.mo: switcher_ui-vi.po
	msgfmt -o switcher_ui-vi.mo switcher_ui-vi.po

clone:
	git clone https://github.com/an-pham/perim_channelswitch.git

download:
	git pull

upload:
	git add -A
	git commit
	git push origin 

tags:
	git push origin --tags
