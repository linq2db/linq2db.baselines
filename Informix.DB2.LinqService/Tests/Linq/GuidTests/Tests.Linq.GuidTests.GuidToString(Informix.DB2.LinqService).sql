BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Char(36) -- StringFixedLength
SET     @Id = '193ae7f4-5309-4eee-a746-27b28c7e30f3'

INSERT INTO TableWithGuid
(
	Id
)
VALUES
(
	@Id
)

BeforeExecute
-- Informix.DB2 Informix

SELECT FIRST 1
	Lower(To_Char(t.Id))
FROM
	TableWithGuid t

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t.Id
FROM
	TableWithGuid t
WHERE
	Lower(To_Char(t.Id)) LIKE '%7f4-53%' ESCAPE '~'

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t.Id
FROM
	TableWithGuid t
WHERE
	Lower(To_Char(t.Id)) LIKE '193ae%' ESCAPE '~'

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t.Id
FROM
	TableWithGuid t
WHERE
	Lower(To_Char(t.Id)) LIKE '%8f4-53%' ESCAPE '~'

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t.Id
FROM
	TableWithGuid t
WHERE
	Lower(To_Char(t.Id)) LIKE '293ae%' ESCAPE '~'

