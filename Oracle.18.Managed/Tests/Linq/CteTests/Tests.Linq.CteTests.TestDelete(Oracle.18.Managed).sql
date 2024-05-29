BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "CteChild"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "CteChild"
		(
			"ChildID"  Int NOT NULL,
			"ParentID" Int NOT NULL
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

INSERT ALL
	INTO "CteChild" ("ChildID", "ParentID") VALUES (1000,0)
	INTO "CteChild" ("ChildID", "ParentID") VALUES (1001,1)
	INTO "CteChild" ("ChildID", "ParentID") VALUES (1002,2)
	INTO "CteChild" ("ChildID", "ParentID") VALUES (1003,3)
	INTO "CteChild" ("ChildID", "ParentID") VALUES (1004,4)
	INTO "CteChild" ("ChildID", "ParentID") VALUES (1005,5)
	INTO "CteChild" ("ChildID", "ParentID") VALUES (1006,6)
	INTO "CteChild" ("ChildID", "ParentID") VALUES (1007,7)
	INTO "CteChild" ("ChildID", "ParentID") VALUES (1008,8)
	INTO "CteChild" ("ChildID", "ParentID") VALUES (1009,9)
SELECT * FROM dual

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

DELETE
(
	WITH CTE_1 ("ParentID", "ChildID")
	AS
	(
		SELECT
			c_1."ParentID",
			c_1."ChildID"
		FROM
			"CteChild" c_1
		WHERE
			MOD(c_1."ParentID", 2) = 0
	)
	SELECT
		*
	FROM
		"CteChild" t1
	WHERE
		EXISTS(
			SELECT
				ct."ParentID"
			FROM
				"CteChild" c_2
					INNER JOIN CTE_1 ct ON ct."ParentID" = c_2."ParentID"
			WHERE
				t1."ChildID" = c_2."ChildID" AND t1."ParentID" = c_2."ParentID"
		)
)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "CteChild"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

