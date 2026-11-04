-- Informix.DB2 Informix
SELECT FIRST 2
	p.Conv || '|' || Nvl('-', '')
FROM
	ConvertedConcatRow p

