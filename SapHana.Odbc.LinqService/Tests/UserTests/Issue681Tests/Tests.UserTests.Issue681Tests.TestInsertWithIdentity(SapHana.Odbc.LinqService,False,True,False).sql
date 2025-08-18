BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @Value Int -- Int32
SET     @Value = 10

INSERT INTO "Issue681Table4"
(
	"Value"
)
VALUES
(
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT CURRENT_IDENTITY_VALUE() FROM DUMMY

