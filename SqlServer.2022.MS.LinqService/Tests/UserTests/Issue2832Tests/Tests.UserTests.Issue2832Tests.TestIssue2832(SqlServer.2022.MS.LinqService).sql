(245810) SELECT 
	t245810.Id = t245809.Id
FROM [DctSetpointtype(245809)] as t245809 (spt)
		LEFT JOIN (
			[VWellTree(245812)] as t245812 (t2)
				INNER JOIN [DctOu(245814)] as t245814 (tp2) ON ({t245812.ShopId?}? = {t245814.Id})
				LEFT JOIN [UacUsersDatagroup(245817)] as t245817 (cudg) ON ({t245814.Id} = {t245817.DatagroupId} AND {t245817.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(245822)] as t245822 (oudg) ON ({t245814.ParentId?}? = {t245822.DatagroupId} AND {t245822.UserId} = 150 AND {t245822.Inheritablepermission} > 0)
				INNER JOIN [Deviation(245842)] as t245842 (d) ON ({t245812.WellId?}? = {t245842.WellId})
		)  ON ({t245842.SetpointtypeId} = {t245809.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t245817.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t245822.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
