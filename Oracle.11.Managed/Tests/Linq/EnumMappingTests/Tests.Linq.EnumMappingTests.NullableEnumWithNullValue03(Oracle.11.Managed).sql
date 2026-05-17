-- Oracle.11.Managed Oracle11
DECLARE @p Int32
SET     @p = 104

DELETE FROM
	"LinqDataTypes" r
WHERE
	r.ID >= 101 AND r.ID < :p

-- Oracle.11.Managed Oracle11
DECLARE @Id Int32
SET     @Id = 101
DECLARE @Value Varchar2(2) -- String
SET     @Value = '11'

INSERT INTO "LinqDataTypes"
(
	ID,
	"StringValue"
)
VALUES
(
	:Id,
	:Value
)

-- Oracle.11.Managed Oracle11
DECLARE @Id Int32
SET     @Id = 102
DECLARE @Value Varchar2(2) -- String
SET     @Value = '22'

INSERT INTO "LinqDataTypes"
(
	ID,
	"StringValue"
)
VALUES
(
	:Id,
	:Value
)

-- Oracle.11.Managed Oracle11
DECLARE @Id Int32
SET     @Id = 103
DECLARE @Value Varchar2 -- String
SET     @Value = NULL

INSERT INTO "LinqDataTypes"
(
	ID,
	"StringValue"
)
VALUES
(
	:Id,
	:Value
)

-- Oracle.11.Managed Oracle11

SELECT
	r.ID,
	r."StringValue"
FROM
	"LinqDataTypes" r
WHERE
	r.ID >= 101 AND r.ID <= 103
ORDER BY
	r.ID

-- Oracle.11.Managed Oracle11

SELECT
	r.ID,
	r."IntValue",
	r."StringValue"
FROM
	"LinqDataTypes" r
WHERE
	r.ID >= 101 AND r.ID <= 103
ORDER BY
	r.ID

-- Oracle.11.Managed Oracle11
DECLARE @p Int32
SET     @p = 104

DELETE FROM
	"LinqDataTypes" r
WHERE
	r.ID >= 101 AND r.ID < :p

