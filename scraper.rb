#!/bin/env ruby
# encoding: utf-8

require 'everypolitician'
require 'wikidata/fetcher'

existing = EveryPolitician::Index.new.country("Isle-of-Man").legislature('House-of-Keys').popolo.persons.map(&:wikidata).compact

names = EveryPolitician::Wikidata.morph_wikinames(source: 'tmtmtmtm/isle-of-man-house-of-keys-wikipedia', column: 'wikipedia__en')
EveryPolitician::Wikidata.scrape_wikidata(ids: existing, names: { en: names })
