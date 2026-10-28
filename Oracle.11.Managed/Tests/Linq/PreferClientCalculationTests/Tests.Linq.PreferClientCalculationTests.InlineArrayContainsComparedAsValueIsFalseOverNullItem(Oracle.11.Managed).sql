-- Oracle.11.Managed Oracle11
SELECT
	e."Id",
	e."Item",
	e."Flag"
FROM
	"NestedInListEntity" e
WHERE
	CASE
		WHEN e."Flag" = 1 THEN 1
		ELSE 0
	END = CASE
		WHEN e."Id" = e."Item" OR e."Id" = 5 THEN 1
		ELSE 0
	END

-- Oracle.11.Managed Oracle11
SELECT
	t1."Id",
	t1."Item",
	t1."Flag"
FROM
	"NestedInListEntity" t1

-- Oracle.11.Managed Oracle11
SELECT
	e."Id",
	e."Item",
	e."Flag"
FROM
	"NestedInListEntity" e
WHERE
	CASE
		WHEN e."Flag" = 1 THEN 1
		ELSE 0
	END <> CASE
		WHEN e."Id" = e."Item" OR e."Id" = 5 THEN 1
		ELSE 0
	END

-- Oracle.11.Managed Oracle11
SELECT
	t1."Id",
	t1."Item",
	t1."Flag"
FROM
	"NestedInListEntity" t1

