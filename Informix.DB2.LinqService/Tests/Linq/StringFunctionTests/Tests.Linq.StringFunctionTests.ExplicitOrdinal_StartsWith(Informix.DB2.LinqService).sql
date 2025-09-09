BeforeExecute
-- Informix.DB2 Informix (asynchronously)

DELETE FROM
	CollatedTable

BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @CaseSensitive VarChar(10) -- String
SET     @CaseSensitive = 'TestString'
DECLARE @CaseInsensitive VarChar(10) -- String
SET     @CaseInsensitive = 'TestString'

INSERT INTO CollatedTable
(
	Id,
	CaseSensitive,
	CaseInsensitive
)
VALUES
(
	@Id,
	@CaseSensitive,
	@CaseInsensitive
)

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	COUNT(*)
FROM
	CollatedTable r
WHERE
	r.CaseSensitive LIKE 'TestSt%' ESCAPE '~'

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	COUNT(*)
FROM
	CollatedTable r
WHERE
	r.CaseInsensitive LIKE 'TestSt%' ESCAPE '~'

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	COUNT(*)
FROM
	CollatedTable r
WHERE
	r.CaseSensitive LIKE 'testst%' ESCAPE '~'

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	COUNT(*)
FROM
	CollatedTable r
WHERE
	r.CaseInsensitive LIKE 'testst%' ESCAPE '~'

