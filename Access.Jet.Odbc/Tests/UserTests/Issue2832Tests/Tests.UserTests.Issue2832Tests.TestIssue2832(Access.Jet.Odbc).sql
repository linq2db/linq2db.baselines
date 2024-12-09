(307192) SELECT 
	t307192.Id = t307191.Id
FROM [DctSetpointtype(307191)] as t307191 (spt)
		LEFT JOIN (
			(307228) SELECT 
				t307228.SetpointtypeId = t307224.SetpointtypeId
			FROM [VWellTree(307194)] as t307194 (t2)
					INNER JOIN [DctOu(307196)] as t307196 (tp2) ON ({t307194.ShopId?}? = {t307196.Id})
					LEFT JOIN [UacUsersDatagroup(307199)] as t307199 (cudg) ON ({t307196.Id} = {t307199.DatagroupId} AND {t307199.UserId} = 150)
					LEFT JOIN [UacUsersDatagroup(307204)] as t307204 (oudg) ON ({t307196.ParentId?}? = {t307204.DatagroupId} AND {t307204.UserId} = 150 AND {t307204.Inheritablepermission} > 0)
					INNER JOIN [Deviation(307224)] as t307224 (d) ON ({t307194.WellId?}? = {t307224.WellId})
			WHERE
				({UTILS.GREATESTNOTNULL3(t307199.Permission, t307204.Inheritablepermission, NULL)?}? IS NOT NULL)
		) as t307228 (t2_1) ON ({t307228.SetpointtypeId?} = {t307191.Id})
