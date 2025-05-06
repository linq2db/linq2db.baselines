BeforeExecute
-- Informix.DB2 Informix

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	EXISTS(
		SELECT
			r.One
		FROM table(set{1})
		INTERSECT
		SELECT
			r.One
		FROM table(set{1})
	)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	EXISTS(
		SELECT
			r.Zero
		FROM table(set{1})
		INTERSECT
		SELECT
			r.Zero
		FROM table(set{1})
	)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	EXISTS(
		SELECT
			r."Null"
		FROM table(set{1})
		INTERSECT
		SELECT
			r."Null"
		FROM table(set{1})
	)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	EXISTS(
		SELECT
			r.One
		FROM table(set{1})
		INTERSECT
		SELECT
			r.Zero
		FROM table(set{1})
	)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	EXISTS(
		SELECT
			r.One
		FROM table(set{1})
		INTERSECT
		SELECT
			r."Null"
		FROM table(set{1})
	)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	EXISTS(
		SELECT
			r.Zero
		FROM table(set{1})
		INTERSECT
		SELECT
			r."Null"
		FROM table(set{1})
	)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	NOT EXISTS(
		SELECT
			r.One
		FROM table(set{1})
		INTERSECT
		SELECT
			r.One
		FROM table(set{1})
	)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	NOT EXISTS(
		SELECT
			r.Zero
		FROM table(set{1})
		INTERSECT
		SELECT
			r.Zero
		FROM table(set{1})
	)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	NOT EXISTS(
		SELECT
			r."Null"
		FROM table(set{1})
		INTERSECT
		SELECT
			r."Null"
		FROM table(set{1})
	)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	NOT EXISTS(
		SELECT
			r.One
		FROM table(set{1})
		INTERSECT
		SELECT
			r.Zero
		FROM table(set{1})
	)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	NOT EXISTS(
		SELECT
			r.One
		FROM table(set{1})
		INTERSECT
		SELECT
			r."Null"
		FROM table(set{1})
	)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	NOT EXISTS(
		SELECT
			r.Zero
		FROM table(set{1})
		INTERSECT
		SELECT
			r."Null"
		FROM table(set{1})
	)

