(218775) SELECT 
	t218775.Id = t218774.Id
FROM [DctSetpointtype(218774)] as t218774 (spt)
		LEFT JOIN (
			[VWellTree(218777)] as t218777 (t2)
				INNER JOIN [DctOu(218779)] as t218779 (tp2) ON ({t218777.ShopId?}? = {t218779.Id})
				LEFT JOIN [UacUsersDatagroup(218782)] as t218782 (cudg) ON ({t218779.Id} = {t218782.DatagroupId} AND {t218782.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(218787)] as t218787 (oudg) ON ({t218779.ParentId?}? = {t218787.DatagroupId} AND {t218787.UserId} = 150 AND {t218787.Inheritablepermission} > 0)
				INNER JOIN [Deviation(218807)] as t218807 (d) ON ({t218777.WellId?}? = {t218807.WellId})
		)  ON ({t218807.SetpointtypeId} = {t218774.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t218782.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t218787.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
