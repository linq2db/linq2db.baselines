BeforeExecute
-- Informix.DB2 Informix

SELECT FIRST 1
	Lower(To_Char(t.Id))
FROM
	TableWithGuid t

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t.Id,
	t.NullableGuid
FROM
	TableWithGuid t
WHERE
	Lower(To_Char(t.Id)) LIKE '%63d-0f%' ESCAPE '~'

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t.Id,
	t.NullableGuid
FROM
	TableWithGuid t
WHERE
	Lower(To_Char(t.Id)) LIKE 'bc7b6%' ESCAPE '~'

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t.Id,
	t.NullableGuid
FROM
	TableWithGuid t
WHERE
	Lower(To_Char(t.Id)) LIKE '%8f4-53%' ESCAPE '~'

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t.Id,
	t.NullableGuid
FROM
	TableWithGuid t
WHERE
	Lower(To_Char(t.Id)) LIKE '8f4-53%' ESCAPE '~'

