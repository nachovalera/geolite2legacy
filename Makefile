.PHONY: up
up: GeoLite2-Country-CSV.zip
	pipenv install
	pipenv run python geolite2legacy.py -i GeoLite2-Country-CSV.zip -f geoname2fips.csv -o GeoIP.dat

.PHONY: GeoLite2-Country-CSV.zip
GeoLite2-Country-CSV.zip:
	curl https://geolite.maxmind.com/download/geoip/database/GeoLite2-Country-CSV.zip --output GeoLite2-Country-CSV.zip
