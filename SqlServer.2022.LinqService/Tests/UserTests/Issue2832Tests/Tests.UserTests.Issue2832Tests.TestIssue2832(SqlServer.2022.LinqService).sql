(245868) SELECT 
	t245868.Id = t245867.Id
FROM [DctSetpointtype(245867)] as t245867 (spt)
		LEFT JOIN (
			[VWellTree(245870)] as t245870 (t2)
				INNER JOIN [DctOu(245872)] as t245872 (tp2) ON ({t245870.ShopId?}? = {t245872.Id})
				LEFT JOIN [UacUsersDatagroup(245875)] as t245875 (cudg) ON ({t245872.Id} = {t245875.DatagroupId} AND {t245875.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(245880)] as t245880 (oudg) ON ({t245872.ParentId?}? = {t245880.DatagroupId} AND {t245880.UserId} = 150 AND {t245880.Inheritablepermission} > 0)
				INNER JOIN [Deviation(245900)] as t245900 (d) ON ({t245870.WellId?}? = {t245900.WellId})
		)  ON ({t245900.SetpointtypeId} = {t245867.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t245875.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t245880.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
