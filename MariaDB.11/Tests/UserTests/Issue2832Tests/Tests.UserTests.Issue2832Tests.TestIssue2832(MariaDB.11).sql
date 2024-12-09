(157276) SELECT 
	t157276.Id = t157275.Id
FROM [DctSetpointtype(157275)] as t157275 (spt)
		LEFT JOIN (
			[VWellTree(157278)] as t157278 (t2)
				INNER JOIN [DctOu(157280)] as t157280 (tp2) ON ({t157278.ShopId?}? = {t157280.Id})
				LEFT JOIN [UacUsersDatagroup(157283)] as t157283 (cudg) ON ({t157280.Id} = {t157283.DatagroupId} AND {t157283.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(157288)] as t157288 (oudg) ON ({t157280.ParentId?}? = {t157288.DatagroupId} AND {t157288.UserId} = 150 AND {t157288.Inheritablepermission} > 0)
				INNER JOIN [Deviation(157308)] as t157308 (d) ON ({t157278.WellId?}? = {t157308.WellId})
		)  ON ({t157308.SetpointtypeId} = {t157275.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t157283.Permission AS (System.Nullable`1[System.Decimal], Decimal, "29", "10")), CAST(t157288.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "29", "10")), NULL)?}? IS NOT NULL)
