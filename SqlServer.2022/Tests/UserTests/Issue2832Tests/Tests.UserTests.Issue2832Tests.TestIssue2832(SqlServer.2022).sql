(245790) SELECT 
	t245790.Id = t245789.Id
FROM [DctSetpointtype(245789)] as t245789 (spt)
		LEFT JOIN (
			[VWellTree(245792)] as t245792 (t2)
				INNER JOIN [DctOu(245794)] as t245794 (tp2) ON ({t245792.ShopId?}? = {t245794.Id})
				LEFT JOIN [UacUsersDatagroup(245797)] as t245797 (cudg) ON ({t245794.Id} = {t245797.DatagroupId} AND {t245797.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(245802)] as t245802 (oudg) ON ({t245794.ParentId?}? = {t245802.DatagroupId} AND {t245802.UserId} = 150 AND {t245802.Inheritablepermission} > 0)
				INNER JOIN [Deviation(245822)] as t245822 (d) ON ({t245792.WellId?}? = {t245822.WellId})
		)  ON ({t245822.SetpointtypeId} = {t245789.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t245797.Permission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), CAST(t245802.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), NULL)?}? IS NOT NULL)
