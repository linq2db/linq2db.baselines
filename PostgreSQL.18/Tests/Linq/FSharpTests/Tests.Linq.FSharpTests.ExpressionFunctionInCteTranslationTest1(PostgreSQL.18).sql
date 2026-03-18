-- PostgreSQL.18 PostgreSQL
DECLARE @p Unknown -- Object
SET     @p = {Sunday, 01 March 2026,Monday, 02 March 2026,Tuesday, 03 March 2026,Wednesday, 04 March 2026,Thursday, 05 March 2026,Friday, 06 March 2026,Saturday, 07 March 2026,Sunday, 08 March 2026}
-- value above truncated for logging

SELECT
	COUNT(*)
FROM
	my_entities d
WHERE
	:p @> d."date"

