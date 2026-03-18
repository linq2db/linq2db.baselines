-- PostgreSQL.15 PostgreSQL

CREATE TEMPORARY TABLE my_entities
(
	id        Int  NOT NULL,
	parent_id Int  NOT NULL,
	"date"    Date NOT NULL
)
ON COMMIT PRESERVE ROWS

-- PostgreSQL.15 PostgreSQL
DECLARE @:p1 Date
SET     @:p1 = Sunday, 15 March 2026
DECLARE @:p2 Date
SET     @:p2 = Monday, 16 March 2026
DECLARE @:p3 Date
SET     @:p3 = Friday, 17 April 2026

INSERT INTO my_entities
(
	id,
	parent_id,
	"date"
)
VALUES
(1,1,:p1),
(2,1,:p2),
(3,1,:p3)

-- PostgreSQL.15 PostgreSQL
DECLARE @p Unknown -- Object
SET     @p = {Sunday, 01 March 2026,Monday, 02 March 2026,Tuesday, 03 March 2026,Wednesday, 04 March 2026,Thursday, 05 March 2026,Friday, 06 March 2026,Saturday, 07 March 2026,Sunday, 08 March 2026}
-- value above truncated for logging

WITH templates_with_valid_until ("Template_ValidFrom")
AS
(
	SELECT
		d."date"
	FROM
		my_entities d
)
SELECT
	COUNT(*)
FROM
	templates_with_valid_until t1
WHERE
	:p @> t1."Template_ValidFrom"

-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS my_entities

