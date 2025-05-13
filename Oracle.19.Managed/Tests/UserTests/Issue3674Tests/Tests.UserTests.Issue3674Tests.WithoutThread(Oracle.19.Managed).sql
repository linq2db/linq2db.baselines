BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	p."Code",
	p."DIM_Company",
	p."DIM_Branch",
	p."DIM_Location",
	p."DIM_MSegment",
	p."DIM_Make"
FROM
	"Issue3674Tests" p
WHERE
	p."Code" = '42' AND
	p."DIM_Company" IS NULL AND
	p."DIM_Branch" IS NULL AND
	p."DIM_Location" IS NULL AND
	p."DIM_MSegment" IS NULL AND
	p."DIM_Make" IS NULL
FETCH NEXT 1 ROWS ONLY

