(167932) SELECT 
	t167932.Id = t167931.Id
FROM [DctSetpointtype(167931)] as t167931 (spt)
		LEFT JOIN (
			(167969) SELECT 
				t167969.SetpointtypeId        = t167964.SetpointtypeId,
				t167969.Permission            = t167939.Permission?,
				t167969.Inheritablepermission = t167944.Inheritablepermission?
			FROM [VWellTree(167934)] as t167934 (t2)
					INNER JOIN [DctOu(167936)] as t167936 (tp2) ON ({t167934.ShopId?}? = {t167936.Id})
					LEFT JOIN [UacUsersDatagroup(167939)] as t167939 (cudg) ON ({t167936.Id} = {t167939.DatagroupId} AND {t167939.UserId} = 150)
					LEFT JOIN [UacUsersDatagroup(167944)] as t167944 (oudg) ON ({t167936.ParentId?}? = {t167944.DatagroupId} AND {t167944.UserId} = 150 AND {t167944.Inheritablepermission} > 0)
					INNER JOIN [Deviation(167964)] as t167964 (d) ON ({t167934.WellId?}? = {t167964.WellId})
		) as t167969 (t1) ON ({t167969.SetpointtypeId?} = {t167931.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t167969.Permission AS (System.Nullable`1[System.Decimal], Decimal128, "29", "10")), CAST(t167969.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal128, "29", "10")), NULL)?}? IS NOT NULL)
