(238823) SELECT 
	t238823.Id = t238822.Id
FROM [DctSetpointtype(238822)] as t238822 (spt)
		LEFT JOIN (
			[VWellTree(238825)] as t238825 (t2)
				INNER JOIN [DctOu(238827)] as t238827 (tp2) ON ({t238825.ShopId?}? = {t238827.Id})
				LEFT JOIN [UacUsersDatagroup(238830)] as t238830 (cudg) ON ({t238827.Id} = {t238830.DatagroupId} AND {t238830.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(238835)] as t238835 (oudg) ON ({t238827.ParentId?}? = {t238835.DatagroupId} AND {t238835.UserId} = 150 AND {t238835.Inheritablepermission} > 0)
				INNER JOIN [Deviation(238855)] as t238855 (d) ON ({t238825.WellId?}? = {t238855.WellId})
		)  ON ({t238855.SetpointtypeId} = {t238822.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t238830.Permission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), CAST(t238835.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), NULL)?}? IS NOT NULL)
