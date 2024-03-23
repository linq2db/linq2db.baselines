BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "OrderByDistinctData"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "OrderByDistinctData"
		(
			"Id"            Int          NOT NULL,
			"DuplicateData" VarChar(255)     NULL,
			"OrderData1"    Int          NOT NULL,
			"OrderData2"    Int          NOT NULL,

			CONSTRAINT "PK_OrderByDistinctData" PRIMARY KEY ("Id")
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @DuplicateData Varchar2(3) -- String
SET     @DuplicateData = 'One'
DECLARE @OrderData1 Int32
SET     @OrderData1 = 1
DECLARE @OrderData2 Int32
SET     @OrderData2 = 1

INSERT INTO "OrderByDistinctData"
(
	"Id",
	"DuplicateData",
	"OrderData1",
	"OrderData2"
)
VALUES
(
	:Id,
	:DuplicateData,
	:OrderData1,
	:OrderData2
)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 10
DECLARE @DuplicateData Varchar2(3) -- String
SET     @DuplicateData = 'Two'
DECLARE @OrderData1 Int32
SET     @OrderData1 = 1
DECLARE @OrderData2 Int32
SET     @OrderData2 = 1

INSERT INTO "OrderByDistinctData"
(
	"Id",
	"DuplicateData",
	"OrderData1",
	"OrderData2"
)
VALUES
(
	:Id,
	:DuplicateData,
	:OrderData1,
	:OrderData2
)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 100
DECLARE @DuplicateData Varchar2(5) -- String
SET     @DuplicateData = 'Three'
DECLARE @OrderData1 Int32
SET     @OrderData1 = 1
DECLARE @OrderData2 Int32
SET     @OrderData2 = 1

INSERT INTO "OrderByDistinctData"
(
	"Id",
	"DuplicateData",
	"OrderData1",
	"OrderData2"
)
VALUES
(
	:Id,
	:DuplicateData,
	:OrderData1,
	:OrderData2
)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @skip Int32
SET     @skip = 0
DECLARE @take Int32
SET     @take = 3

SELECT DISTINCT
	x."DuplicateData"
FROM
	"OrderByDistinctData" x
OFFSET :skip ROWS FETCH NEXT :take ROWS ONLY 

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @skip Int32
SET     @skip = 0
DECLARE @take Int32
SET     @take = 3

SELECT
	x."DuplicateData"
FROM
	"OrderByDistinctData" x
ORDER BY
	x."OrderData1"
OFFSET :skip ROWS FETCH NEXT :take ROWS ONLY 

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @skip Int32
SET     @skip = 0
DECLARE @take Int32
SET     @take = 3

SELECT DISTINCT
	x."DuplicateData"
FROM
	"OrderByDistinctData" x
OFFSET :skip ROWS FETCH NEXT :take ROWS ONLY 

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @skip Int32
SET     @skip = 0
DECLARE @take Int32
SET     @take = 3

SELECT
	x."DuplicateData"
FROM
	"OrderByDistinctData" x
ORDER BY
	x."OrderData1" DESC
OFFSET :skip ROWS FETCH NEXT :take ROWS ONLY 

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @skip Int32
SET     @skip = 0
DECLARE @take Int32
SET     @take = 3

SELECT DISTINCT
	x."DuplicateData"
FROM
	"OrderByDistinctData" x
OFFSET :skip ROWS FETCH NEXT :take ROWS ONLY 

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @skip Int32
SET     @skip = 0
DECLARE @take Int32
SET     @take = 3

SELECT
	x."DuplicateData"
FROM
	"OrderByDistinctData" x
ORDER BY
	x."OrderData1",
	x."OrderData2"
OFFSET :skip ROWS FETCH NEXT :take ROWS ONLY 

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @skip Int32
SET     @skip = 0
DECLARE @take Int32
SET     @take = 3

SELECT DISTINCT
	x."DuplicateData"
FROM
	"OrderByDistinctData" x
OFFSET :skip ROWS FETCH NEXT :take ROWS ONLY 

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @skip Int32
SET     @skip = 0
DECLARE @take Int32
SET     @take = 3

SELECT
	x."DuplicateData"
FROM
	"OrderByDistinctData" x
ORDER BY
	x."OrderData1",
	x."OrderData2" DESC
OFFSET :skip ROWS FETCH NEXT :take ROWS ONLY 

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @skip Int32
SET     @skip = 0
DECLARE @take Int32
SET     @take = 3

SELECT DISTINCT
	x."DuplicateData"
FROM
	"OrderByDistinctData" x
OFFSET :skip ROWS FETCH NEXT :take ROWS ONLY 

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @skip Int32
SET     @skip = 0
DECLARE @take Int32
SET     @take = 3

SELECT
	x."DuplicateData"
FROM
	"OrderByDistinctData" x
ORDER BY
	x."OrderData1" DESC,
	x."OrderData2" DESC
OFFSET :skip ROWS FETCH NEXT :take ROWS ONLY 

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @skip Int32
SET     @skip = 0
DECLARE @take Int32
SET     @take = 3

SELECT DISTINCT
	x."DuplicateData"
FROM
	"OrderByDistinctData" x
OFFSET :skip ROWS FETCH NEXT :take ROWS ONLY 

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @skip Int32
SET     @skip = 0
DECLARE @take Int32
SET     @take = 3

SELECT
	x."DuplicateData"
FROM
	"OrderByDistinctData" x
ORDER BY
	x."OrderData1",
	x."OrderData2" DESC
OFFSET :skip ROWS FETCH NEXT :take ROWS ONLY 

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "OrderByDistinctData"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

