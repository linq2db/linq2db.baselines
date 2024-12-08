(157309) SELECT 
	t157309.Id = t157308.Id
FROM [DctSetpointtype(157308)] as t157308 (spt)
		LEFT JOIN (
			[VWellTree(157311)] as t157311 (t2)
				INNER JOIN [DctOu(157313)] as t157313 (tp2) ON ({t157311.ShopId?}? = {t157313.Id})
				LEFT JOIN [UacUsersDatagroup(157316)] as t157316 (cudg) ON ({t157313.Id} = {t157316.DatagroupId} AND {t157316.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(157321)] as t157321 (oudg) ON ({t157313.ParentId?}? = {t157321.DatagroupId} AND {t157321.UserId} = 150 AND {t157321.Inheritablepermission} > 0)
				INNER JOIN [Deviation(157341)] as t157341 (d) ON ({t157311.WellId?}? = {t157341.WellId})
		)  ON ({t157341.SetpointtypeId} = {t157308.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t157316.Permission AS (System.Nullable`1[System.Decimal], Decimal, "29", "10")), CAST(t157321.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "29", "10")), NULL)?}? IS NOT NULL)
