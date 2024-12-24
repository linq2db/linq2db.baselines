BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Tdm100"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "Tdm100"
		(
			"Id"          Int         NOT NULL,
			"CarSelf"     VarChar(10)     NULL,
			"CarNo"       VarChar(10)     NULL,
			"CarBrand"    VarChar(10)     NULL,
			"RateWgt"     VarChar(10)     NULL,
			"MastLeve"    VarChar(10)     NULL,
			"ForkPole"    VarChar(10)     NULL,
			"ForkPoleLen" VarChar(10)     NULL
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Trp004"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "Trp004"
		(
			"Id"              Int         NOT NULL,
			"CarNo"           VarChar(10)     NULL,
			"RuleNo"          VarChar(10)     NULL,
			"LastWorkVal"     VarChar(10)     NULL,
			"LastDate"        VarChar(10)     NULL,
			"RealLastWorkVal" VarChar(10)     NULL,
			"RealLastDate"    VarChar(10)     NULL,
			"Status"          VarChar(10)     NULL,
			"TelNo"           VarChar(10)     NULL,
			"RecCreator"      VarChar(10)     NULL,
			"RecCreateTime"   VarChar(10)     NULL,
			"RecRevisor"      VarChar(10)     NULL,
			"RecReviseTime"   VarChar(10)     NULL
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Trp003"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "Trp003"
		(
			"Id"       Int         NOT NULL,
			"RuleNo"   VarChar(10)     NULL,
			"RuleName" VarChar(10)     NULL,
			"RuleType" VarChar(10)     NULL,
			"RuleVal"  VarChar(10)     NULL,
			"RuleUnit" VarChar(10)     NULL,
			"Remark"   VarChar(10)     NULL
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Trp0041"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "Trp0041"
		(
			"Id"       Int         NOT NULL,
			"CarNo"    VarChar(10)     NULL,
			"FirstVal" VarChar(10)     NULL
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @carNo Varchar2(3) -- String
SET     @carNo = '%1%'
DECLARE @carBrand Varchar2(6) -- String
SET     @carBrand = '%test%'
DECLARE @skip Int32
SET     @skip = 20
DECLARE @take Int32
SET     @take = 10

SELECT
	t_1."Id",
	t_1."CarNo",
	t_1."CarSelf",
	t_1."CarBrand",
	t_1."RateWgt",
	t_1."MastLeve",
	t_1."ForkPole",
	t_1."FirstVal",
	t_1."TelNo",
	t_1."RuleNo",
	t_1."RuleName",
	t_1."RuleType",
	t_1."RuleVal",
	t_1."RuleUnit",
	t_1."RecCreator",
	t_1."RecCreateTime",
	t_1."RecRevisor",
	t_1."RecReviseTime"
FROM
	(
		SELECT
			t2."RuleNo",
			t."CarNo",
			t."CarBrand",
			t."Id",
			t."CarSelf",
			t."RateWgt",
			t."MastLeve",
			t."ForkPole",
			t4."FirstVal",
			t2."TelNo",
			t3."RuleName",
			t3."RuleType",
			t3."RuleVal",
			t3."RuleUnit",
			t2."RecCreator",
			t2."RecCreateTime",
			t2."RecRevisor",
			t2."RecReviseTime"
		FROM
			"Tdm100" t
				LEFT JOIN "Trp004" t2 ON t2."CarNo" = t."CarNo" OR t2."CarNo" IS NULL AND t."CarNo" IS NULL
				LEFT JOIN "Trp003" t3 ON t3."RuleNo" = t2."RuleNo" OR t3."RuleNo" IS NULL AND t2."RuleNo" IS NULL
				LEFT JOIN "Trp0041" t4 ON t4."CarNo" = t."CarNo" OR t4."CarNo" IS NULL AND t."CarNo" IS NULL
	) t_1
WHERE
	t_1."RuleNo" IS NULL AND t_1."CarNo" LIKE :carNo ESCAPE '~' AND
	t_1."CarBrand" LIKE :carBrand ESCAPE '~'
OFFSET :skip ROWS FETCH NEXT :take ROWS ONLY 

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @carNo Varchar2(3) -- String
SET     @carNo = '%1%'
DECLARE @carBrand Varchar2(6) -- String
SET     @carBrand = '%test%'

SELECT
	COUNT(*)
FROM
	(
		SELECT
			t2."RuleNo",
			t."CarNo",
			t."CarBrand"
		FROM
			"Tdm100" t
				LEFT JOIN "Trp004" t2 ON t2."CarNo" = t."CarNo" OR t2."CarNo" IS NULL AND t."CarNo" IS NULL
				LEFT JOIN "Trp003" t3 ON t3."RuleNo" = t2."RuleNo" OR t3."RuleNo" IS NULL AND t2."RuleNo" IS NULL
				LEFT JOIN "Trp0041" t4 ON t4."CarNo" = t."CarNo" OR t4."CarNo" IS NULL AND t."CarNo" IS NULL
	) t1
WHERE
	t1."RuleNo" IS NULL AND t1."CarNo" LIKE :carNo ESCAPE '~' AND
	t1."CarBrand" LIKE :carBrand ESCAPE '~'

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Trp0041"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Trp003"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Trp004"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Tdm100"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

