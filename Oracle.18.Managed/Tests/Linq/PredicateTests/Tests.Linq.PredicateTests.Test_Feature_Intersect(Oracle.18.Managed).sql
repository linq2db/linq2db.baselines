﻿BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	EXISTS(
		SELECT
			r."One"
		FROM SYS.DUAL
		INTERSECT
		SELECT
			r."One"
		FROM SYS.DUAL
	)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	EXISTS(
		SELECT
			r."Zero"
		FROM SYS.DUAL
		INTERSECT
		SELECT
			r."Zero"
		FROM SYS.DUAL
	)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	EXISTS(
		SELECT
			r."Null"
		FROM SYS.DUAL
		INTERSECT
		SELECT
			r."Null"
		FROM SYS.DUAL
	)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	EXISTS(
		SELECT
			r."One"
		FROM SYS.DUAL
		INTERSECT
		SELECT
			r."Zero"
		FROM SYS.DUAL
	)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	EXISTS(
		SELECT
			r."One"
		FROM SYS.DUAL
		INTERSECT
		SELECT
			r."Null"
		FROM SYS.DUAL
	)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	EXISTS(
		SELECT
			r."Zero"
		FROM SYS.DUAL
		INTERSECT
		SELECT
			r."Null"
		FROM SYS.DUAL
	)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	NOT EXISTS(
		SELECT
			r."One"
		FROM SYS.DUAL
		INTERSECT
		SELECT
			r."One"
		FROM SYS.DUAL
	)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	NOT EXISTS(
		SELECT
			r."Zero"
		FROM SYS.DUAL
		INTERSECT
		SELECT
			r."Zero"
		FROM SYS.DUAL
	)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	NOT EXISTS(
		SELECT
			r."Null"
		FROM SYS.DUAL
		INTERSECT
		SELECT
			r."Null"
		FROM SYS.DUAL
	)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	NOT EXISTS(
		SELECT
			r."One"
		FROM SYS.DUAL
		INTERSECT
		SELECT
			r."Zero"
		FROM SYS.DUAL
	)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	NOT EXISTS(
		SELECT
			r."One"
		FROM SYS.DUAL
		INTERSECT
		SELECT
			r."Null"
		FROM SYS.DUAL
	)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	NOT EXISTS(
		SELECT
			r."Zero"
		FROM SYS.DUAL
		INTERSECT
		SELECT
			r."Null"
		FROM SYS.DUAL
	)

