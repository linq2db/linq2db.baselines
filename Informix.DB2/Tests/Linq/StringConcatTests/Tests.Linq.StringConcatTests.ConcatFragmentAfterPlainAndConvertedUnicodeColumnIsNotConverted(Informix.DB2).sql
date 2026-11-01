-- Informix.DB2 Informix
SELECT FIRST 2
	r.Plain || r.Conv || Nvl('-', '')
FROM
	PlainAndConvertedUnicodeRow r

