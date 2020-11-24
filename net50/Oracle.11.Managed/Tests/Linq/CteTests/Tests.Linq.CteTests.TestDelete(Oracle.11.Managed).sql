BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE TABLE "CteChild"
(
	"ChildID"  Int NOT NULL,
	"ParentID" Int NOT NULL
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

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
-- Oracle.11.Managed Oracle.Managed Oracle11

DELETE
(
	WITH CTE_1 ("ParentID")
	AS
	(
		SELECT
			c_1."ParentID"
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
				*
			FROM
				"CteChild" c_2
					INNER JOIN CTE_1 ct ON ct."ParentID" = c_2."ParentID"
			WHERE
				t1."ChildID" = c_2."ChildID" AND t1."ParentID" = c_2."ParentID"
		)
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DROP TABLE "CteChild"

