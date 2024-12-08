(106794) SELECT 
	t106794.Id = t106793.Id
FROM [DctSetpointtype(106793)] as t106793 (spt)
		LEFT JOIN (
			[VWellTree(106796)] as t106796 (t2)
				INNER JOIN [DctOu(106798)] as t106798 (tp2) ON ({t106796.ShopId?}? = {t106798.Id})
				LEFT JOIN [UacUsersDatagroup(106801)] as t106801 (cudg) ON ({t106798.Id} = {t106801.DatagroupId} AND {t106801.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(106806)] as t106806 (oudg) ON ({t106798.ParentId?}? = {t106806.DatagroupId} AND {t106806.UserId} = 150 AND {t106806.Inheritablepermission} > 0)
				INNER JOIN [Deviation(106826)] as t106826 (d) ON ({t106796.WellId?}? = {t106826.WellId})
		)  ON ({t106826.SetpointtypeId} = {t106793.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t106801.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t106806.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
