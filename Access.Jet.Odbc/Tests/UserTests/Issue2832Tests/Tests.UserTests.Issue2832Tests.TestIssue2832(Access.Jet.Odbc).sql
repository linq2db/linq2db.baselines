(307221) SELECT 
	t307221.Id = t307220.Id
FROM [DctSetpointtype(307220)] as t307220 (spt)
		LEFT JOIN (
			(307257) SELECT 
				t307257.SetpointtypeId = t307253.SetpointtypeId
			FROM [VWellTree(307223)] as t307223 (t2)
					INNER JOIN [DctOu(307225)] as t307225 (tp2) ON ({t307223.ShopId?}? = {t307225.Id})
					LEFT JOIN [UacUsersDatagroup(307228)] as t307228 (cudg) ON ({t307225.Id} = {t307228.DatagroupId} AND {t307228.UserId} = 150)
					LEFT JOIN [UacUsersDatagroup(307233)] as t307233 (oudg) ON ({t307225.ParentId?}? = {t307233.DatagroupId} AND {t307233.UserId} = 150 AND {t307233.Inheritablepermission} > 0)
					INNER JOIN [Deviation(307253)] as t307253 (d) ON ({t307223.WellId?}? = {t307253.WellId})
			WHERE
				({UTILS.GREATESTNOTNULL3(t307228.Permission, t307233.Inheritablepermission, NULL)?}? IS NOT NULL)
		) as t307257 (t2_1) ON ({t307257.SetpointtypeId?} = {t307220.Id})
