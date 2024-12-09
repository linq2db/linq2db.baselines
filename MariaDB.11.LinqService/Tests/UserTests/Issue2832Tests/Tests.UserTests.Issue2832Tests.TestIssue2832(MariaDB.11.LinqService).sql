(157315) SELECT 
	t157315.Id = t157314.Id
FROM [DctSetpointtype(157314)] as t157314 (spt)
		LEFT JOIN (
			[VWellTree(157317)] as t157317 (t2)
				INNER JOIN [DctOu(157319)] as t157319 (tp2) ON ({t157317.ShopId?}? = {t157319.Id})
				LEFT JOIN [UacUsersDatagroup(157322)] as t157322 (cudg) ON ({t157319.Id} = {t157322.DatagroupId} AND {t157322.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(157327)] as t157327 (oudg) ON ({t157319.ParentId?}? = {t157327.DatagroupId} AND {t157327.UserId} = 150 AND {t157327.Inheritablepermission} > 0)
				INNER JOIN [Deviation(157347)] as t157347 (d) ON ({t157317.WellId?}? = {t157347.WellId})
		)  ON ({t157347.SetpointtypeId} = {t157314.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t157322.Permission AS (System.Nullable`1[System.Decimal], Decimal, "29", "10")), CAST(t157327.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "29", "10")), NULL)?}? IS NOT NULL)
