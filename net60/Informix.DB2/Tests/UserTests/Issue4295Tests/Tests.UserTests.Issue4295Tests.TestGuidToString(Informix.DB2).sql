BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS InfeedAdvicePositionDTO

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS InfeedAdvicePositionDTO
(
	Id VARCHAR(36) NOT NULL
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Char(36) -- StringFixedLength
SET     @Id = '193ae7f4-5309-4eee-a746-27b28c7e30f3'

INSERT INTO InfeedAdvicePositionDTO
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
	Upper(To_Char(infeed.Id))
FROM
	InfeedAdvicePositionDTO infeed

BeforeExecute
-- Informix.DB2 Informix

SELECT
	infeed.Id
FROM
	InfeedAdvicePositionDTO infeed
WHERE
	Upper(To_Char(infeed.Id)) LIKE '%7F4-53%' ESCAPE '~'

BeforeExecute
-- Informix.DB2 Informix

SELECT
	infeed.Id
FROM
	InfeedAdvicePositionDTO infeed
WHERE
	Upper(To_Char(infeed.Id)) LIKE '193AE%' ESCAPE '~'

BeforeExecute
-- Informix.DB2 Informix

SELECT
	infeed.Id
FROM
	InfeedAdvicePositionDTO infeed
WHERE
	Upper(To_Char(infeed.Id)) LIKE '%8F4-53%' ESCAPE '~'

BeforeExecute
-- Informix.DB2 Informix

SELECT
	infeed.Id
FROM
	InfeedAdvicePositionDTO infeed
WHERE
	Lower(Upper(To_Char(infeed.Id))) LIKE '293AE%' ESCAPE '~'

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS InfeedAdvicePositionDTO

