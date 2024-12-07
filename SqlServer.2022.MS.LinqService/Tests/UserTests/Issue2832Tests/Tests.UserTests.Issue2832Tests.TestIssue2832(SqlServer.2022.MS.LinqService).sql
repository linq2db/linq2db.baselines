(244796) SELECT 
	t244796.Id = t244795.Id
FROM [DctSetpointtype(244795)] as t244795 (spt)
		LEFT JOIN (
			[VWellTree(244798)] as t244798 (t2)
				INNER JOIN [DctOu(244800)] as t244800 (tp2) ON ({t244798.ShopId?}? = {t244800.Id})
				LEFT JOIN [UacUsersDatagroup(244803)] as t244803 (cudg) ON ({t244800.Id} = {t244803.DatagroupId} AND {t244803.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(244808)] as t244808 (oudg) ON ({t244800.ParentId?}? = {t244808.DatagroupId} AND {t244808.UserId} = 150 AND {t244808.Inheritablepermission} > 0)
				INNER JOIN [Deviation(244828)] as t244828 (d) ON ({t244798.WellId?}? = {t244828.WellId})
		)  ON ({t244828.SetpointtypeId} = {t244795.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t244803.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t244808.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
