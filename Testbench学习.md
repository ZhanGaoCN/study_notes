## Testbench学习

### itertools

<img src="C:\Users\lenovo\AppData\Roaming\Typora\typora-user-images\image-20240307212821568.png" alt="image-20240307212821568" style="zoom: 50%;" />

iterator tools是用于高效处理迭代器的工具集合。迭代器可以对集合进行遍历。

在仿真中常用的两个

#### itertools.cycle

<img src="C:\Users\lenovo\AppData\Roaming\Typora\typora-user-images\image-20240307214445757.png" alt="image-20240307214445757" style="zoom:50%;" />

Python 中 `itertools` 模块提供的一个函数，用于创建一个无限循环的迭代器。它不断重复迭代提供的可迭代对象的元素

语法：itertools.cycle(iterable)，不断重复iterable



#### itertools.islice

<img src="C:\Users\lenovo\AppData\Roaming\Typora\typora-user-images\image-20240307214459812.png" alt="image-20240307214459812" style="zoom:50%;" />

用于对可迭代对象进行切片操作的函数。

语法：itertools.islice(iterable, start, stop,step)

- `iterable`：要切片的可迭代对象。
- `start`：切片的起始位置，即开始迭代的索引。
- `stop`：切片的结束位置，即停止迭代的索引。切片会在这个位置之前结束，不包括该位置的元素。
- `step`：步长，表示每隔多少个元素取一个值。

共有start、stop、step三个参数，当islice中只有一个参数时，会被认为是stop参数，当有两个参数时，从前往后时start、stop。

### logging

<img src="C:\Users\lenovo\AppData\Roaming\Typora\typora-user-images\image-20240307220027712.png" alt="image-20240307220027712" style="zoom:50%;" />

`logging` 模块提供了一个灵活而强大的日志记录框架，可以用于记录各种级别的日志消息，从而帮助开发人员进行调试、监测和错误跟踪。

#### logging.getLogger

<img src="C:\Users\lenovo\AppData\Roaming\Typora\typora-user-images\image-20240307220250390.png" alt="image-20240307220250390" style="zoom:50%;" />

`logging.getLogger` 是 `logging` 模块中的一个函数，用于获取或创建一个具有指定名称的 Logger 对象。

### os

<img src="C:\Users\lenovo\AppData\Roaming\Typora\typora-user-images\image-20240307220432722.png" alt="image-20240307220432722" style="zoom:50%;" />

`os` 是 Python 中的一个标准库模块，提供了访问操作系统功能的接口。

#### os.getenv

<img src="C:\Users\lenovo\AppData\Roaming\Typora\typora-user-images\image-20240307220640294.png" alt="image-20240307220640294" style="zoom:50%;" />

`os.getenv` 是 Python 中 `os` 模块提供的一个函数，用于获取环境变量的值。环境变量是在操作系统级别设置的一些参数，可以在运行程序时被访问。

语法：value = os.getenv('ENV_VARIABLE_NAME', 'default_value')

- `'ENV_VARIABLE_NAME'`：要获取的环境变量的名称。
- `'default_value'`：如果环境变量不存在，则返回的默认值。

### scapy

<img src="C:\Users\lenovo\AppData\Roaming\Typora\typora-user-images\image-20240307221218161.png" alt="image-20240307221218161" style="zoom:50%;" />

Scapy 是一个用于处理网络数据包的强大的 Python 库。它允许用户创建、发送、捕获和分析网络数据包，同时提供了对各种网络协议的支持。

#### Ether

<img src="C:\Users\lenovo\AppData\Roaming\Typora\typora-user-images\image-20240307220927539.png" alt="image-20240307220927539" style="zoom:50%;" />

在 Python 中，`Ether` 是 Scapy 库中定义的一个类，用于表示以太网帧（Ethernet Frame）。Scapy 是一个强大的网络数据包处理库，用于创建、发送和解析网络数据包。

`from scapy.layers.l2 import Ether` 是使用 Scapy 库时的导入语句，用于导入 Scapy 中 `Ether` 类的定义。这个类表示以太网帧（Ethernet Frame），是在第二层（数据链路层）进行网络通信时使用的基本数据单元。

`scapy.layers.l2`：这是 Scapy 库的一个模块，其中包含了数据链路层的一些基本协议的实现。

可以在 Python 中使用 `Ether` 类来创建以太网帧。

![image-20240307221420441](C:\Users\lenovo\AppData\Roaming\Typora\typora-user-images\image-20240307221420441.png)

#### raw

<img src="C:\Users\lenovo\AppData\Roaming\Typora\typora-user-images\image-20240307221559165.png" alt="image-20240307221559165" style="zoom:50%;" />

原始字节类

### pytest

<img src="C:\Users\lenovo\AppData\Roaming\Typora\typora-user-images\image-20240307221909254.png" alt="image-20240307221909254" style="zoom:50%;" />

`pytest` 是一个用于编写和运行 Python 测试的第三方库。它是 Python 生态系统中最受欢迎的测试框架之一，提供了丰富的功能和易于使用的语法。

`pytest` 的一些主要特点包括：

- **自动发现测试用例：** `pytest` 会自动查找并运行测试用例，无需显式配置。`pytest` 将查找以 `test_` 开头的函数，并执行测试用例。测试结果将显示在终端中。
- **详细的测试输出：** 提供详细的测试结果输出，包括通过的用例、失败的用例以及跳过的用例。
- **支持参数化测试：** 允许为同一个测试用例传递多组参数进行测试。
- **插件系统：** 可以通过插件扩展 `pytest` 的功能，满足各种测试需求。

### cocotb

<img src="C:\Users\lenovo\AppData\Roaming\Typora\typora-user-images\image-20240308095342119.png" alt="image-20240308095342119" style="zoom:50%;" />

在 Python 中，`import cocotb` 是导入 `cocotb` 测试框架的方式。

##### 协程测试：

`cocotb` 允许你使用 Python 协程（`async def` 和 `await`）编写测试用例，使得测试代码更加清晰和易于理解。

Python 协程是一种异步编程的技术，使用 `async def` 定义异步函数，并通过 `await` 关键字进行协作式的多任务处理。协程提供了一种轻量级的线程替代方案，可以有效管理并行任务。

协程的优势在于它们允许程序员编写看似同步的代码，但在实际执行时可以异步执行，提高了程序的并发性。协程通常用于异步 I/O 操作、网络编程、并发任务的调度等场景。

<img src="C:\Users\lenovo\AppData\Roaming\Typora\typora-user-images\image-20240308101142979.png" alt="image-20240308101142979" style="zoom:67%;" />

##### async def:

使用 `async def` 关键字定义的函数是异步函数，表示它是一个协程。异步函数可以包含 `await` 关键字，用于等待其他异步操作的完成。当多个异步函数被调用时这些函数是被并发执行的。

##### await表达式：

在异步函数内，使用 `await` 关键字等待异步操作的完成。`await` 表达式会让出控制权，允许事件循环在等待的同时执行其他任务。

#### cocotb.clock

`cocotb.clock` 模块提供了与时钟相关的功能，用于控制仿真中的时钟信号。这个模块允许测试脚本模拟时钟的行为，例如生成时钟脉冲、等待时钟边沿等。

##### Clock类：

<img src="C:\Users\lenovo\AppData\Roaming\Typora\typora-user-images\image-20240308102355949.png" alt="image-20240308102355949" style="zoom:67%;" />

**`cocotb.clock.Clock` 类：** 用于模拟时钟信号的行为。你可以创建 `Clock` 实例（**将导入的Clock实例化，调用其中的方法**），配置时钟的频率和起始相位，然后在仿真中控制时钟的行为。

例：![image-20240311095121558](C:\Users\lenovo\AppData\Roaming\Typora\typora-user-images\image-20240311095121558.png)

Clock对象的完整参数列表为：

![image-20240311095538335](C:\Users\lenovo\AppData\Roaming\Typora\typora-user-images\image-20240311095538335.png)

表示创建一个Clock对象，接收参数：dut.clk、8表示时钟周期的时间值：8、units=“ns”表示时间单位为ns

.start()即调用Clock对象的start方法：启动时钟生成器，开始生成时钟信号。

#### cocotb.triggers

在 cocotb 中，`cocotb.triggers` 模块提供了一系列用于协同测试（Coroutine-based testing）的触发器，用于和await语句相配合，管理协程 的执行流程。

##### RisingEdge类：

<img src="C:\Users\lenovo\AppData\Roaming\Typora\typora-user-images\image-20240308140933217.png" alt="image-20240308140933217" style="zoom: 67%;" />

`RisingEdge` 类是 `cocotb.triggers` 模块中的一个触发器类，用于在信号的上升沿（从低电平到高电平的过渡）时触发协同测试 coroutine。这个触发器通常用于同步测试逻辑，等待特定信号的变化以执行后续的测试步骤。与await表达式配合使用。

#### cocotb.regression

`cocotb.regression` 模块提供了用于管理测试套件和执行回归测试的功能。Regression 测试是一种测试方法，用于确保在进行软件开发的过程中，新的更改没有破坏现有的功能。

##### TestFactory类

<img src="C:\Users\lenovo\AppData\Roaming\Typora\typora-user-images\image-20240308111438966.png" alt="image-20240308111438966" style="zoom:67%;" />

测试工厂类，其中包含测试的参数和生成测试的方法。测试工厂会根据指定的参数组合多次调用测试函数。

#### cocotb.binary



### cocotb_test

`cocotb_test` 是 `cocotb` 测试框架提供的一个模块，用于编写和运行仿真测试。`cocotb` 是一个用于编写基于 Python 的协程测试的库，主要用于硬件描述语言（HDL）仿真场景。

与cocotb库的区别在于cocotb_test是一个单元测试，消除对makefile的需求，属于是另外一套cocotb（不太常用）

#### cocotb_test.simulator

<img src="C:\Users\lenovo\AppData\Roaming\Typora\typora-user-images\image-20240308094854341.png" alt="image-20240308094854341" style="zoom:50%;" />

**`cocotb_test.simulator` 模块：** 用于与仿真器进行交互。包含 `Simulator` 类，用于控制仿真器的启动和停止.一旦导入了 `Simulator` 类，你就可以在测试脚本中使用它来控制仿真器的行为。

### Random

<img src="C:\Users\lenovo\AppData\Roaming\Typora\typora-user-images\image-20240308093224581.png" alt="image-20240308093224581" style="zoom:50%;" />

在 Python 中，`import random` 是导入名为 `random` 的标准库模块，该模块提供了生成伪随机数的功能。通过导入 `random` 模块，你可以在你的程序中使用各种随机数生成函数。

#### **`random()`：**

 返回一个范围在 [0.0, 1.0) 之间的随机浮点数。

#### **`randint(a, b)`：** 

返回一个范围在 `[a, b]` 之间的随机整数。

#### **`choice(seq)`：**

 从序列 `seq` 中随机选择一个元素返回。

#### **`shuffle(seq)`：**

 将序列 `seq` 中的元素随机排序（原地操作）。

#### **`sample(population, k)`：** 

从总体（population）中随机选择 `k` 个唯一的元素。



### copy



在 Python 中，`import copy` 是导入标准库中的 `copy` 模块，该模块提供了用于浅拷贝和深拷贝的功能。拷贝操作用于创建对象的副本，以便在修改副本时不影响原始对象。

#### **`copy.copy(x)`：**

 执行浅拷贝，返回对象 `x` 的一个浅层副本。对于复合对象（如列表或字典），仅拷贝对象本身，而不是其内容。

#### **`copy.deepcopy(x)`：**

 执行深拷贝，返回对象 `x` 的一个深层副本。对于复合对象，递归地拷贝其内容

### 上述总结：

![image-20240311092033866](C:\Users\lenovo\AppData\Roaming\Typora\typora-user-images\image-20240311092033866.png)

可以这么理解：from后面跟的是库，import后面跟的是类

有特殊情况的话后面再说

### TB测试台类：

![image-20240311091448040](C:\Users\lenovo\AppData\Roaming\Typora\typora-user-images\image-20240311091448040.png)

class TB定义一个测试台类

#### 构造函数

def _ init_(self,dut)为类的构造函数，从外界接收一个参数dut

self.dut、self.log指的都是self的属性即log属性为logging.getlogger函数生成的一个名为cocotb.tb的文件

self.source属性被赋值为一个AxiStreamSource对象（发送端）

**AxiStreamSource类**

完整参数列表为：

<img src="C:\Users\lenovo\AppData\Roaming\Typora\typora-user-images\image-20240311100014071.png" alt="image-20240311100014071" style="zoom:67%;" />

- `bus`：`AxiStreamBus` 对象，用于描述 AXI-Stream 接口的信号。可以使用 `AxiStreamBus.from_prefix(dut, prefix)` 来创建。
- `clk`：设计单元的时钟信号，通常是从被测试的设计单元 (`dut`) 中获取的时钟信号。
- `rst`：设计单元的复位信号，通常是从被测试的设计单元 (`dut`) 中获取的复位信号。
- `name`：可选参数，用于指定该源的名称，默认为 "source"

**AxiStreamBus类**

是用于描述AXIS接口信号的类，在cocotb中用于模拟和访问这些信号。该信号的属性是axis接口的各个信号：tvalid、tready、tlast、tusertkeep

其中的AxiStreamBus.from_prefix是该类的一个方法，**根据指定信号的前缀从dut中提取相应的信号**，这个方法的目的是为了简化测试代码。该方法的使用方式：

![image-20240311102830309](C:\Users\lenovo\AppData\Roaming\Typora\typora-user-images\image-20240311102830309.png)

- `dut`：被测试的设计单元。
- `prefix`：信号名称的前缀，用于从设计单元中提取相应的 AXI-Stream 接口信号。

也就是说，AxiStreamSource这个对象其实是从AxiStreamBus中的信号中根据前缀提取出来的。

self.sink属性被赋值为一个AxiStreamSink对象（接收端）

和上面的分析是一样的。

cocotb.fork是cocotb库中用于创建并行任务的函数，简单说用这个函数创建的任务将于并行函数等并发执行。

构造函数中的相关代码的作用是在cocotb测试中启动一个时钟生成器，以产生一个8纳秒周期的时钟信号。通过使用 `cocotb.fork`，这个任务可以在测试的主协程中并行执行，而不会阻塞其他操作

**相关定义：**

对象是类的具体实例化，类（对象）的属性是其中存储数据（可以是广义的数据）的变量，表示类的特征或状态；方法是类中的函数，用于定义类的行为和操作，其中包含一系列操作。

构造函数用于初始化对象（类）的属性，当创建一个类的实例（对象）时，构造函数会被自动调用。构造函数通常包含一些参数，这些参数被用于初始化对象的属性，为对象的属性赋值。

#### TB类的方法

**TB类在相同类的测试中一般不用修改，其中定义的方法和属性都是通用的。**

TB类中存在异步方法（使用 `async def` 定义的方法）和普通方法。异步方法需要使用 `await` 来调用，而在异步上下文中（比如另一个异步方法内部），可以直接调用同步方法。同步方法可以在同步和异步上下文中都被调用，但是在异步上下文中调用同步方法时，可能会阻塞事件循环。因此，尽量避免在异步上下文中调用长时间运行的同步方法。

异步方法通常用于处理 IO 操作、时序、等待事件等异步操作，而同步方法则更适合简单的计算和操作

##### set_idle_generator方法

![image-20240311103937674](C:\Users\lenovo\AppData\Roaming\Typora\typora-user-images\image-20240311103937674.png)

该方法从外部接收一个名为generator的参数，该参数用于传递一个生成器类对象（根据参数名的一种描述性解释，即根据参数命名来推测用法）内部操作通过AxiStreamSource的方法来实现。

**生成器** 生成器是一种特殊的**迭代器**

该方法中调用的：**AxiStreamSource.set_pause_generator方法**

![image-20240311104843564](C:\Users\lenovo\AppData\Roaming\Typora\typora-user-images\image-20240311104843564.png)

`AxiStreamSource` 类中的 `set_pause_generator` 方法用于设置空闲时期生成器。这个方法的目的是**在 AXI-Stream 接口的空闲时期插入一些周期**

- `generator`：空闲时期生成器。可以是一个生成器对象、一个函数、或一个带有 `__call__` 方法的类实例。
- `frequency`：可选参数，用于设置空闲时期的频率。指定生成器在何种频率下运行。默认为 `None`，表示不指定频率，生成器将在每个周期都运行。
- `cycles`：可选参数，用于设置生成器运行的周期数。指定生成器运行的总周期数。默认为 `None`，表示生成器将一直运行。

在本方法中：generator参数由外部传入，frequency和cycle参数都为默认，表示生成器将一直在每个周期都运行。

set_idle_generator方法的作用是通过调用AxiStreamSource.set_pause_generator方法在外部传入的generator周期内插入空闲。

##### set_backpressure_generator方法

![image-20240311110420648](C:\Users\lenovo\AppData\Roaming\Typora\typora-user-images\image-20240311110420648.png)

可以看到，空闲生成器和背压生成器的区别就在于：空闲生成器是生成AXIS上游信号（除data外）的空闲周期，背压生成器是生成AXIS下游信号（除data外）的空闲周期（表示下游处理不过来了）

**什么时候同步/异步**
在给定的 `TB` 类中，`set_idle_generator` 方法并没有被定义为异步函数 (`async def`) 的主要原因可能是，该方法的实现不涉及到需要等待异步事件或者执行异步操作的情况。在很多情况下，如果方法内部的操作是同步的，不涉及到异步 I/O 操作或者需要等待的异步任务，就可以将方法定义为同步的。

异步函数通常在以下情况下使用：

1. **涉及到异步 I/O 操作：** 如果方法内部需要进行异步的 I/O 操作，比如异步等待硬件响应、等待时序事件等，那么就需要定义为异步函数。
2. **等待异步任务完成：** 如果方法内部需要等待其他协程的完成，或者等待事件循环中的某个事件发生，那么也需要定义为异步函数。
3. **避免阻塞事件循环：** 异步函数通常用于避免在异步上下文中发生长时间的阻塞，以保持事件循环的响应性。

##### reset方法（异步）

<img src="C:\Users\lenovo\AppData\Roaming\Typora\typora-user-images\image-20240311111254743.png" alt="image-20240311111254743" style="zoom:67%;" />

比较清晰的逻辑

##### send方法（异步）

<img src="C:\Users\lenovo\AppData\Roaming\Typora\typora-user-images\image-20240311111417786.png" alt="image-20240311111417786" style="zoom:67%;" />

定义一个异步协程方法，在方法内部使用await关键字来等待`AxiStreamSource` 对象的 `send` 方法完成。`AxiStreamSource` 对象的 `send` 方法用于将数据包发送到 AXI-Stream 接口。**凡是协程都要用await关键字来协调，因为都是并行的，要不不知道先后**

##### recv方法（异步）

<img src="C:\Users\lenovo\AppData\Roaming\Typora\typora-user-images\image-20240311112532991.png" alt="image-20240311112532991" style="zoom:67%;" />

原理同send

### 测试函数 run_test（异步）

该异步函数通常用于加入测试数据并比对测试结果，会随测试而改变，下面

需要我们自己写的就是测试元素的生成以及按照.v逻辑修改后的参考数据的生成逻辑。

给出一个例子：

![image-20240311112945309](C:\Users\lenovo\AppData\Roaming\Typora\typora-user-images\image-20240311112945309.png)

首先例化一个TB对象。dut会从外部传入，

调用TB类的reset异步方法

调用TB类中的空闲生成器和背压生成器方法，都是同步函数

创建一个空列表test_pkts