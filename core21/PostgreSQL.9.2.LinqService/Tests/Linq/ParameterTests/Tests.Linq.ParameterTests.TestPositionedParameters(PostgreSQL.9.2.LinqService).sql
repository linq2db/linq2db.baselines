BeforeExecute
-- PostgreSQL.9.2 PostgreSQL
DECLARE @z2 Integer -- Int32
SET     @z2 = 2
DECLARE @y10 Integer -- Int32
SET     @y10 = 10
DECLARE @z2_1 Integer -- Int32
SET     @z2_1 = 2
DECLARE @y10_1 Integer -- Int32
SET     @y10_1 = 10
DECLARE @x3 Integer -- Int32
SET     @x3 = 3
DECLARE @z2_2 Integer -- Int32
SET     @z2_2 = 2
DECLARE @y10_2 Integer -- Int32
SET     @y10_2 = 10
DECLARE @x3_1 Integer -- Int32
SET     @x3_1 = 3

SELECT
	((((:x3_1 * (:y10_2 - :z2_2) / :x3_1) * :z2_2) * (((((:x3 * (:y10_1 - :z2_1) / :x3) * :z2_1) * (:y10 - :z2) / ((:x3 * (:y10_1 - :z2_1) / :x3) * :z2_1)) * :z2) - child_1."ChildID") / ((:x3_1 * (:y10_2 - :z2_2) / :x3_1) * :z2_2)) * child_1."ChildID")
FROM
	"Child" child_1

