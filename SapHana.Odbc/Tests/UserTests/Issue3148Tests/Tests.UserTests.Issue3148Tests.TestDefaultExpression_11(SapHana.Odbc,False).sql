-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."commonMiscConstantId",
	"t1"."intmandatory",
	"t1"."doublemandatory",
	"t1"."stringmandatory",
	"t1"."intoptional",
	"t1"."doubleoptional",
	"t1"."stringoptional"
FROM
	"_SYS_BIC"."FIT/CA_PARAM_TEST"('PLACEHOLDER' = ('$$ipIntMandatory$$', '10', '$$ipDoubleMandatory$$', '0', '$$ipStringMandatory$$', 'mandatory1')) "t1"

