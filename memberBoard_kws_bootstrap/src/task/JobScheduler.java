//package task;
//
//import java.util.Collection;
//
//import javax.servlet.ServletConfig;
//import javax.servlet.ServletException;
//import javax.servlet.http.HttpServlet;
//
//import org.quartz.CronScheduleBuilder;
//import org.quartz.CronTrigger;
//import org.quartz.JobBuilder;
//import org.quartz.JobDetail;
//import org.quartz.Scheduler;
//import org.quartz.SchedulerException;
//import org.quartz.SchedulerFactory;
//import org.quartz.TriggerBuilder;
//import org.quartz.impl.StdSchedulerFactory;
//
//
//
//public class JobScheduler extends HttpServlet{
//	
//	
//	@Override
//	public void init(ServletConfig config) throws ServletException {
//		super.init(config);
//		// 스케쥴러 팩토리
//				SchedulerFactory factory = new StdSchedulerFactory();
//				// 스케쥴러 생성
//				Scheduler scheduler;
//				try {
//					scheduler = factory.getScheduler();
//					scheduler.start();
//				// 1. 작업
//				JobDetail jobDetail = 
//						JobBuilder
//						.newJob(OrganizeFileJob.class)
//						.build();
//				// 2. 규칙 (cron) "0 0 2 * * ?" 매일 두시부터 실행
//				CronTrigger cronTrigger =
//						TriggerBuilder.newTrigger().withSchedule(CronScheduleBuilder.cronSchedule("0 0 2 * * ?")).build();
//				// 스케쥴러에 작업, 규칙 부여
//				scheduler.scheduleJob(jobDetail,cronTrigger);
//				} catch (SchedulerException e) {
//					// TODO Auto-generated catch block
//					e.printStackTrace();
//				}
//	}
//
//	public static void main(String[] args) throws SchedulerException {
//		// 스케쥴러 팩토리
//		SchedulerFactory factory = new StdSchedulerFactory();
//		// 스케쥴러 생성
//		Scheduler scheduler = factory.getScheduler();
//		scheduler.start();
//		// 1. 작업
//		JobDetail jobDetail = JobBuilder.newJob(TestJob.class).build();
//		// 2. 규칙 (cron) "0 0 2 * * ?" 매일 두시부터 실행
//		CronTrigger cronTrigger =
//				TriggerBuilder.newTrigger().withSchedule(CronScheduleBuilder.cronSchedule("0 * * * * ?")).build();
//		// 스케쥴러에 작업, 규칙 부여
//		scheduler.scheduleJob(jobDetail,cronTrigger);
//	}
//}
