#include <linux/module.h>
#include <linux/kernel.h>
#include <linux/init.h>

static int __init hello_init(void)
{
	printk("hello driver!\n");
	return 0;
}

static void __exit hello_cleanup(void)
{
	printk("hello cleanup!\n");
}

module_init(hello_init);
module_exit(hello_cleanup);

MODULE_AUTHOR("Hyoung Ham <hham@leapmotion.com>");
MODULE_DESCRIPTION("Hello Again");
MODULE_LICENSE("GPL");

