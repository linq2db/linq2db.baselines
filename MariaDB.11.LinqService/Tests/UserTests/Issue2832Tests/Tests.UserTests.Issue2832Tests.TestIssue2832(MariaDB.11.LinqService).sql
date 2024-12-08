(157293) SELECT 
	t157293.Id = t157292.Id
FROM [DctSetpointtype(157292)] as t157292 (spt)
		LEFT JOIN (
			[VWellTree(157295)] as t157295 (t2)
				INNER JOIN [DctOu(157297)] as t157297 (tp2) ON ({t157295.ShopId?}? = {t157297.Id})
				LEFT JOIN [UacUsersDatagroup(157300)] as t157300 (cudg) ON ({t157297.Id} = {t157300.DatagroupId} AND {t157300.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(157305)] as t157305 (oudg) ON ({t157297.ParentId?}? = {t157305.DatagroupId} AND {t157305.UserId} = 150 AND {t157305.Inheritablepermission} > 0)
				INNER JOIN [Deviation(157325)] as t157325 (d) ON ({t157295.WellId?}? = {t157325.WellId})
		)  ON ({t157325.SetpointtypeId} = {t157292.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t157300.Permission AS (System.Nullable`1[System.Decimal], Decimal, "29", "10")), CAST(t157305.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "29", "10")), NULL)?}? IS NOT NULL)
