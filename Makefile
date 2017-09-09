default: clean build

build:
	# Generate Packages file
	apt-ftparchive packages . > Packages

	# Generate and sign the Release file
	apt-ftparchive release Packages > Release
	gpg --clearsign -o InRelease Release
	gpg -abs -o Release.gpg Release

clean:
	rm -f Packages Release InRelease Release.gpg

publish:
	rsync --recursive --exclude=".git" --update --delete --verbose . bigfish:web/bezdomni.net/packages
