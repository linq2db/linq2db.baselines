-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @skip Int32
SET     @skip = 0
DECLARE @take Int32
SET     @take = 3

SELECT DISTINCT
	x."DuplicateData"
FROM
	"OrderByDistinctData" x
OFFSET :skip ROWS FETCH NEXT :take ROWS ONLY 

-- Oracle.18.Managed Oracle.Managed Oracle12
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

-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @skip Int32
SET     @skip = 0
DECLARE @take Int32
SET     @take = 3

SELECT DISTINCT
	x."DuplicateData"
FROM
	"OrderByDistinctData" x
OFFSET :skip ROWS FETCH NEXT :take ROWS ONLY 

-- Oracle.18.Managed Oracle.Managed Oracle12
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

-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @skip Int32
SET     @skip = 0
DECLARE @take Int32
SET     @take = 3

SELECT DISTINCT
	x."DuplicateData"
FROM
	"OrderByDistinctData" x
OFFSET :skip ROWS FETCH NEXT :take ROWS ONLY 

-- Oracle.18.Managed Oracle.Managed Oracle12
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

-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @skip Int32
SET     @skip = 0
DECLARE @take Int32
SET     @take = 3

SELECT DISTINCT
	x."DuplicateData"
FROM
	"OrderByDistinctData" x
OFFSET :skip ROWS FETCH NEXT :take ROWS ONLY 

-- Oracle.18.Managed Oracle.Managed Oracle12
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

-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @skip Int32
SET     @skip = 0
DECLARE @take Int32
SET     @take = 3

SELECT DISTINCT
	x."DuplicateData"
FROM
	"OrderByDistinctData" x
OFFSET :skip ROWS FETCH NEXT :take ROWS ONLY 

-- Oracle.18.Managed Oracle.Managed Oracle12
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

-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @skip Int32
SET     @skip = 0
DECLARE @take Int32
SET     @take = 3

SELECT DISTINCT
	x."DuplicateData"
FROM
	"OrderByDistinctData" x
OFFSET :skip ROWS FETCH NEXT :take ROWS ONLY 

-- Oracle.18.Managed Oracle.Managed Oracle12
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

