BeforeExecute
-- Oracle.Managed Oracle12

BEGIN
	BEGIN
		EXECUTE IMMEDIATE 'DROP TRIGGER "TIDENTITY_Categories"';
	EXCEPTION
		WHEN OTHERS THEN
			IF SQLCODE != -4080 THEN
				RAISE;
			END IF;
	END;
	BEGIN
		EXECUTE IMMEDIATE 'DROP SEQUENCE "SIDENTITY_Categories"';
	EXCEPTION
		WHEN OTHERS THEN
			IF SQLCODE != -2289 THEN
				RAISE;
			END IF;
	END;
	BEGIN
		EXECUTE IMMEDIATE 'DROP TABLE "Categories"';
	EXCEPTION
		WHEN OTHERS THEN
			IF SQLCODE != -942 THEN
				RAISE;
			END IF;
	END;
END;

BeforeExecute
-- Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "Categories"
		(
			"CategoryID"   Int           NOT NULL,
			"CategoryName" VarChar(255)  NOT NULL,
			"Description"  VarChar(255)      NULL,

			CONSTRAINT "PK_Categories" PRIMARY KEY ("CategoryID")
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.Managed Oracle12

CREATE SEQUENCE "SIDENTITY_Categories"

BeforeExecute
-- Oracle.Managed Oracle12

CREATE OR REPLACE TRIGGER "TIDENTITY_Categories"
BEFORE INSERT ON "Categories" FOR EACH ROW
BEGIN
	SELECT "SIDENTITY_Categories".NEXTVAL INTO :NEW."CategoryID" FROM dual;
END;

BeforeExecute
-- Oracle.Managed Oracle12

INSERT ALL
	INTO "Categories" ("CategoryName", "Description") VALUES ('Name 1','Desc 1')
	INTO "Categories" ("CategoryName", "Description") VALUES ('Name 2','Desc 2')
SELECT * FROM dual

BeforeExecute
-- Oracle.Managed Oracle12

BEGIN
	BEGIN
		EXECUTE IMMEDIATE 'DROP TRIGGER "TIDENTITY_Products"';
	EXCEPTION
		WHEN OTHERS THEN
			IF SQLCODE != -4080 THEN
				RAISE;
			END IF;
	END;
	BEGIN
		EXECUTE IMMEDIATE 'DROP SEQUENCE "SIDENTITY_Products"';
	EXCEPTION
		WHEN OTHERS THEN
			IF SQLCODE != -2289 THEN
				RAISE;
			END IF;
	END;
	BEGIN
		EXECUTE IMMEDIATE 'DROP TABLE "Products"';
	EXCEPTION
		WHEN OTHERS THEN
			IF SQLCODE != -942 THEN
				RAISE;
			END IF;
	END;
END;

BeforeExecute
-- Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "Products"
		(
			"ProductID"       Int           NOT NULL,
			"ProductName"     VarChar(255)  NOT NULL,
			"CategoryID"      Int               NULL,
			"QuantityPerUnit" VarChar(255)      NULL,

			CONSTRAINT "PK_Products" PRIMARY KEY ("ProductID")
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.Managed Oracle12

CREATE SEQUENCE "SIDENTITY_Products"

BeforeExecute
-- Oracle.Managed Oracle12

CREATE OR REPLACE TRIGGER "TIDENTITY_Products"
BEFORE INSERT ON "Products" FOR EACH ROW
BEGIN
	SELECT "SIDENTITY_Products".NEXTVAL INTO :NEW."ProductID" FROM dual;
END;

BeforeExecute
-- Oracle.Managed Oracle12

INSERT ALL
	INTO "Products" ("ProductName", "CategoryID", "QuantityPerUnit") VALUES ('Prod 1',1,'q 1')
	INTO "Products" ("ProductName", "CategoryID", "QuantityPerUnit") VALUES ('Prod 2',1,'q 2')
	INTO "Products" ("ProductName", "CategoryID", "QuantityPerUnit") VALUES ('Prod 3',3,'q 3')
	INTO "Products" ("ProductName", "CategoryID", "QuantityPerUnit") VALUES ('Prod 4',3,'q 4')
	INTO "Products" ("ProductName", "CategoryID", "QuantityPerUnit") VALUES ('Prod 5',1,'q 5')
	INTO "Products" ("ProductName", "CategoryID", "QuantityPerUnit") VALUES ('Prod 6',1,'q 6')
SELECT * FROM dual

BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	lw_Category."CategoryID",
	detail."ProductID",
	detail."ProductName",
	detail."CategoryID",
	detail."QuantityPerUnit"
FROM
	"Categories" lw_Category
		INNER JOIN "Products" detail ON lw_Category."CategoryID" = detail."CategoryID"

BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	t1."CategoryID",
	t1."CategoryName",
	t1."Description"
FROM
	"Categories" t1

BeforeExecute
-- Oracle.Managed Oracle12

BEGIN
	BEGIN
		EXECUTE IMMEDIATE 'DROP TRIGGER "TIDENTITY_Products"';
	EXCEPTION
		WHEN OTHERS THEN
			IF SQLCODE != -4080 THEN
				RAISE;
			END IF;
	END;
	BEGIN
		EXECUTE IMMEDIATE 'DROP SEQUENCE "SIDENTITY_Products"';
	EXCEPTION
		WHEN OTHERS THEN
			IF SQLCODE != -2289 THEN
				RAISE;
			END IF;
	END;
	BEGIN
		EXECUTE IMMEDIATE 'DROP TABLE "Products"';
	EXCEPTION
		WHEN OTHERS THEN
			IF SQLCODE != -942 THEN
				RAISE;
			END IF;
	END;
END;

BeforeExecute
-- Oracle.Managed Oracle12

BEGIN
	BEGIN
		EXECUTE IMMEDIATE 'DROP TRIGGER "TIDENTITY_Categories"';
	EXCEPTION
		WHEN OTHERS THEN
			IF SQLCODE != -4080 THEN
				RAISE;
			END IF;
	END;
	BEGIN
		EXECUTE IMMEDIATE 'DROP SEQUENCE "SIDENTITY_Categories"';
	EXCEPTION
		WHEN OTHERS THEN
			IF SQLCODE != -2289 THEN
				RAISE;
			END IF;
	END;
	BEGIN
		EXECUTE IMMEDIATE 'DROP TABLE "Categories"';
	EXCEPTION
		WHEN OTHERS THEN
			IF SQLCODE != -942 THEN
				RAISE;
			END IF;
	END;
END;

