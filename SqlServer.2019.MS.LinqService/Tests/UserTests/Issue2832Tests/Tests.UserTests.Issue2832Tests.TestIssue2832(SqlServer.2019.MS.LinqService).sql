(246785) SELECT 
	t246785.Id = t246784.Id
FROM [DctSetpointtype(246784)] as t246784 (spt)
		LEFT JOIN (
			[VWellTree(246787)] as t246787 (t2)
				INNER JOIN [DctOu(246789)] as t246789 (tp2) ON ({t246787.ShopId?}? = {t246789.Id})
				LEFT JOIN [UacUsersDatagroup(246792)] as t246792 (cudg) ON ({t246789.Id} = {t246792.DatagroupId} AND {t246792.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(246797)] as t246797 (oudg) ON ({t246789.ParentId?}? = {t246797.DatagroupId} AND {t246797.UserId} = 150 AND {t246797.Inheritablepermission} > 0)
				INNER JOIN [Deviation(246817)] as t246817 (d) ON ({t246787.WellId?}? = {t246817.WellId})
		)  ON ({t246817.SetpointtypeId} = {t246784.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t246792.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t246797.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
