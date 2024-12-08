(157254) SELECT 
	t157254.Id = t157253.Id
FROM [DctSetpointtype(157253)] as t157253 (spt)
		LEFT JOIN (
			[VWellTree(157256)] as t157256 (t2)
				INNER JOIN [DctOu(157258)] as t157258 (tp2) ON ({t157256.ShopId?}? = {t157258.Id})
				LEFT JOIN [UacUsersDatagroup(157261)] as t157261 (cudg) ON ({t157258.Id} = {t157261.DatagroupId} AND {t157261.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(157266)] as t157266 (oudg) ON ({t157258.ParentId?}? = {t157266.DatagroupId} AND {t157266.UserId} = 150 AND {t157266.Inheritablepermission} > 0)
				INNER JOIN [Deviation(157286)] as t157286 (d) ON ({t157256.WellId?}? = {t157286.WellId})
		)  ON ({t157286.SetpointtypeId} = {t157253.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t157261.Permission AS (System.Nullable`1[System.Decimal], Decimal, "29", "10")), CAST(t157266.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "29", "10")), NULL)?}? IS NOT NULL)
