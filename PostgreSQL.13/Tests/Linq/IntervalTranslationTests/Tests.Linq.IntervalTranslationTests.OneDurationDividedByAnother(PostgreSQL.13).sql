-- PostgreSQL.13 PostgreSQL12
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Half Bigint -- Int64
SET     @Half = 900
DECLARE @Whole Bigint -- Int64
SET     @Whole = 1800
DECLARE @WholeMs Bigint -- Int64
SET     @WholeMs = 1800000

INSERT INTO "RatioRow"
(
	"Id",
	"Half",
	"Whole",
	"WholeMs"
)
VALUES
(
	:Id,
	:Half,
	:Whole,
	:WholeMs
)

-- PostgreSQL.13 PostgreSQL12
SELECT
	(r."Whole" * 10000000)::Float / (r."WholeMs" * 10000)::Float,
	(r."Half" * 10000000)::Float / (r."Whole" * 10000000)::Float
FROM
	"RatioRow" r
LIMIT 2

