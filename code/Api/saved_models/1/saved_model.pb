бѓ
Ь
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype

Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	

MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C

MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( 
?
Mul
x"T
y"T
z"T"
Ttype:
2	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	

ResizeBilinear
images"T
size
resized_images"
Ttype:
2	"
align_cornersbool( "
half_pixel_centersbool( 
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
С
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring Ј
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.11.02v2.11.0-rc2-17-gd5b57ca93e58Д

random_flip/StateVarVarHandleOp*
_output_shapes
: *
dtype0	*
shape:*%
shared_namerandom_flip/StateVar
y
(random_flip/StateVar/Read/ReadVariableOpReadVariableOprandom_flip/StateVar*
_output_shapes
:*
dtype0	
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
~
Adam/v/dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*$
shared_nameAdam/v/dense_1/bias
w
'Adam/v/dense_1/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_1/bias*
_output_shapes
:
*
dtype0
~
Adam/m/dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*$
shared_nameAdam/m/dense_1/bias
w
'Adam/m/dense_1/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_1/bias*
_output_shapes
:
*
dtype0

Adam/v/dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@
*&
shared_nameAdam/v/dense_1/kernel

)Adam/v/dense_1/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_1/kernel*
_output_shapes

:@
*
dtype0

Adam/m/dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@
*&
shared_nameAdam/m/dense_1/kernel

)Adam/m/dense_1/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_1/kernel*
_output_shapes

:@
*
dtype0
z
Adam/v/dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*"
shared_nameAdam/v/dense/bias
s
%Adam/v/dense/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense/bias*
_output_shapes
:@*
dtype0
z
Adam/m/dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*"
shared_nameAdam/m/dense/bias
s
%Adam/m/dense/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense/bias*
_output_shapes
:@*
dtype0

Adam/v/dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@*$
shared_nameAdam/v/dense/kernel
|
'Adam/v/dense/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense/kernel*
_output_shapes
:	@*
dtype0

Adam/m/dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@*$
shared_nameAdam/m/dense/kernel
|
'Adam/m/dense/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense/kernel*
_output_shapes
:	@*
dtype0

Adam/v/conv2d_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/v/conv2d_5/bias
y
(Adam/v/conv2d_5/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_5/bias*
_output_shapes
:@*
dtype0

Adam/m/conv2d_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/m/conv2d_5/bias
y
(Adam/m/conv2d_5/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_5/bias*
_output_shapes
:@*
dtype0

Adam/v/conv2d_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*'
shared_nameAdam/v/conv2d_5/kernel

*Adam/v/conv2d_5/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_5/kernel*&
_output_shapes
:@@*
dtype0

Adam/m/conv2d_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*'
shared_nameAdam/m/conv2d_5/kernel

*Adam/m/conv2d_5/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_5/kernel*&
_output_shapes
:@@*
dtype0

Adam/v/conv2d_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/v/conv2d_4/bias
y
(Adam/v/conv2d_4/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_4/bias*
_output_shapes
:@*
dtype0

Adam/m/conv2d_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/m/conv2d_4/bias
y
(Adam/m/conv2d_4/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_4/bias*
_output_shapes
:@*
dtype0

Adam/v/conv2d_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*'
shared_nameAdam/v/conv2d_4/kernel

*Adam/v/conv2d_4/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_4/kernel*&
_output_shapes
:@@*
dtype0

Adam/m/conv2d_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*'
shared_nameAdam/m/conv2d_4/kernel

*Adam/m/conv2d_4/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_4/kernel*&
_output_shapes
:@@*
dtype0

Adam/v/conv2d_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/v/conv2d_3/bias
y
(Adam/v/conv2d_3/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_3/bias*
_output_shapes
:@*
dtype0

Adam/m/conv2d_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/m/conv2d_3/bias
y
(Adam/m/conv2d_3/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_3/bias*
_output_shapes
:@*
dtype0

Adam/v/conv2d_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*'
shared_nameAdam/v/conv2d_3/kernel

*Adam/v/conv2d_3/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_3/kernel*&
_output_shapes
:@@*
dtype0

Adam/m/conv2d_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*'
shared_nameAdam/m/conv2d_3/kernel

*Adam/m/conv2d_3/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_3/kernel*&
_output_shapes
:@@*
dtype0

Adam/v/conv2d_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/v/conv2d_2/bias
y
(Adam/v/conv2d_2/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_2/bias*
_output_shapes
:@*
dtype0

Adam/m/conv2d_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/m/conv2d_2/bias
y
(Adam/m/conv2d_2/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_2/bias*
_output_shapes
:@*
dtype0

Adam/v/conv2d_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*'
shared_nameAdam/v/conv2d_2/kernel

*Adam/v/conv2d_2/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_2/kernel*&
_output_shapes
:@@*
dtype0

Adam/m/conv2d_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*'
shared_nameAdam/m/conv2d_2/kernel

*Adam/m/conv2d_2/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_2/kernel*&
_output_shapes
:@@*
dtype0

Adam/v/conv2d_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/v/conv2d_1/bias
y
(Adam/v/conv2d_1/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_1/bias*
_output_shapes
:@*
dtype0

Adam/m/conv2d_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/m/conv2d_1/bias
y
(Adam/m/conv2d_1/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_1/bias*
_output_shapes
:@*
dtype0

Adam/v/conv2d_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*'
shared_nameAdam/v/conv2d_1/kernel

*Adam/v/conv2d_1/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_1/kernel*&
_output_shapes
: @*
dtype0

Adam/m/conv2d_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*'
shared_nameAdam/m/conv2d_1/kernel

*Adam/m/conv2d_1/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_1/kernel*&
_output_shapes
: @*
dtype0
|
Adam/v/conv2d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/v/conv2d/bias
u
&Adam/v/conv2d/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d/bias*
_output_shapes
: *
dtype0
|
Adam/m/conv2d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/m/conv2d/bias
u
&Adam/m/conv2d/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d/bias*
_output_shapes
: *
dtype0

Adam/v/conv2d/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/v/conv2d/kernel

(Adam/v/conv2d/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d/kernel*&
_output_shapes
: *
dtype0

Adam/m/conv2d/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/m/conv2d/kernel

(Adam/m/conv2d/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d/kernel*&
_output_shapes
: *
dtype0
n
learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
f
	iterationVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	iteration
_
iteration/Read/ReadVariableOpReadVariableOp	iteration*
_output_shapes
: *
dtype0	
p
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namedense_1/bias
i
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes
:
*
dtype0
x
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@
*
shared_namedense_1/kernel
q
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes

:@
*
dtype0
l

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_name
dense/bias
e
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes
:@*
dtype0
u
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@*
shared_namedense/kernel
n
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes
:	@*
dtype0
r
conv2d_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_5/bias
k
!conv2d_5/bias/Read/ReadVariableOpReadVariableOpconv2d_5/bias*
_output_shapes
:@*
dtype0

conv2d_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@* 
shared_nameconv2d_5/kernel
{
#conv2d_5/kernel/Read/ReadVariableOpReadVariableOpconv2d_5/kernel*&
_output_shapes
:@@*
dtype0
r
conv2d_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_4/bias
k
!conv2d_4/bias/Read/ReadVariableOpReadVariableOpconv2d_4/bias*
_output_shapes
:@*
dtype0

conv2d_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@* 
shared_nameconv2d_4/kernel
{
#conv2d_4/kernel/Read/ReadVariableOpReadVariableOpconv2d_4/kernel*&
_output_shapes
:@@*
dtype0
r
conv2d_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_3/bias
k
!conv2d_3/bias/Read/ReadVariableOpReadVariableOpconv2d_3/bias*
_output_shapes
:@*
dtype0

conv2d_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@* 
shared_nameconv2d_3/kernel
{
#conv2d_3/kernel/Read/ReadVariableOpReadVariableOpconv2d_3/kernel*&
_output_shapes
:@@*
dtype0
r
conv2d_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_2/bias
k
!conv2d_2/bias/Read/ReadVariableOpReadVariableOpconv2d_2/bias*
_output_shapes
:@*
dtype0

conv2d_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@* 
shared_nameconv2d_2/kernel
{
#conv2d_2/kernel/Read/ReadVariableOpReadVariableOpconv2d_2/kernel*&
_output_shapes
:@@*
dtype0
r
conv2d_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_1/bias
k
!conv2d_1/bias/Read/ReadVariableOpReadVariableOpconv2d_1/bias*
_output_shapes
:@*
dtype0

conv2d_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @* 
shared_nameconv2d_1/kernel
{
#conv2d_1/kernel/Read/ReadVariableOpReadVariableOpconv2d_1/kernel*&
_output_shapes
: @*
dtype0
n
conv2d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d/bias
g
conv2d/bias/Read/ReadVariableOpReadVariableOpconv2d/bias*
_output_shapes
: *
dtype0
~
conv2d/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d/kernel
w
!conv2d/kernel/Read/ReadVariableOpReadVariableOpconv2d/kernel*&
_output_shapes
: *
dtype0

 serving_default_sequential_inputPlaceholder*1
_output_shapes
:џџџџџџџџџ*
dtype0*&
shape:џџџџџџџџџ
б
StatefulPartitionedCallStatefulPartitionedCall serving_default_sequential_inputconv2d/kernelconv2d/biasconv2d_1/kernelconv2d_1/biasconv2d_2/kernelconv2d_2/biasconv2d_3/kernelconv2d_3/biasconv2d_4/kernelconv2d_4/biasconv2d_5/kernelconv2d_5/biasdense/kernel
dense/biasdense_1/kerneldense_1/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ
*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *,
f'R%
#__inference_signature_wrapper_81390

NoOpNoOp
н
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB B

layer-0
layer-1
layer_with_weights-0
layer-2
layer-3
layer_with_weights-1
layer-4
layer-5
layer_with_weights-2
layer-6
layer-7
	layer_with_weights-3
	layer-8

layer-9
layer_with_weights-4
layer-10
layer-11
layer_with_weights-5
layer-12
layer-13
layer-14
layer_with_weights-6
layer-15
layer_with_weights-7
layer-16
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
Ј
layer-0
layer-1
	variables
trainable_variables
regularization_losses
 	keras_api
!__call__
*"&call_and_return_all_conditional_losses* 

#layer-0
$	variables
%trainable_variables
&regularization_losses
'	keras_api
(__call__
*)&call_and_return_all_conditional_losses*
Ш
*	variables
+trainable_variables
,regularization_losses
-	keras_api
.__call__
*/&call_and_return_all_conditional_losses

0kernel
1bias
 2_jit_compiled_convolution_op*

3	variables
4trainable_variables
5regularization_losses
6	keras_api
7__call__
*8&call_and_return_all_conditional_losses* 
Ш
9	variables
:trainable_variables
;regularization_losses
<	keras_api
=__call__
*>&call_and_return_all_conditional_losses

?kernel
@bias
 A_jit_compiled_convolution_op*

B	variables
Ctrainable_variables
Dregularization_losses
E	keras_api
F__call__
*G&call_and_return_all_conditional_losses* 
Ш
H	variables
Itrainable_variables
Jregularization_losses
K	keras_api
L__call__
*M&call_and_return_all_conditional_losses

Nkernel
Obias
 P_jit_compiled_convolution_op*

Q	variables
Rtrainable_variables
Sregularization_losses
T	keras_api
U__call__
*V&call_and_return_all_conditional_losses* 
Ш
W	variables
Xtrainable_variables
Yregularization_losses
Z	keras_api
[__call__
*\&call_and_return_all_conditional_losses

]kernel
^bias
 __jit_compiled_convolution_op*

`	variables
atrainable_variables
bregularization_losses
c	keras_api
d__call__
*e&call_and_return_all_conditional_losses* 
Ш
f	variables
gtrainable_variables
hregularization_losses
i	keras_api
j__call__
*k&call_and_return_all_conditional_losses

lkernel
mbias
 n_jit_compiled_convolution_op*

o	variables
ptrainable_variables
qregularization_losses
r	keras_api
s__call__
*t&call_and_return_all_conditional_losses* 
Ш
u	variables
vtrainable_variables
wregularization_losses
x	keras_api
y__call__
*z&call_and_return_all_conditional_losses

{kernel
|bias
 }_jit_compiled_convolution_op*

~	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses* 

	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses* 
Ў
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
kernel
	bias*
Ў
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
kernel
	bias*
~
00
11
?2
@3
N4
O5
]6
^7
l8
m9
{10
|11
12
13
14
15*
~
00
11
?2
@3
N4
O5
]6
^7
l8
m9
{10
|11
12
13
14
15*
* 
Е
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
:
trace_0
 trace_1
Ёtrace_2
Ђtrace_3* 
:
Ѓtrace_0
Єtrace_1
Ѕtrace_2
Іtrace_3* 
* 

Ї
_variables
Ј_iterations
Љ_learning_rate
Њ_index_dict
Ћ
_momentums
Ќ_velocities
­_update_step_xla*

Ўserving_default* 

Џ	variables
Аtrainable_variables
Бregularization_losses
В	keras_api
Г__call__
+Д&call_and_return_all_conditional_losses* 

Е	variables
Жtrainable_variables
Зregularization_losses
И	keras_api
Й__call__
+К&call_and_return_all_conditional_losses* 
* 
* 
* 

Лnon_trainable_variables
Мlayers
Нmetrics
 Оlayer_regularization_losses
Пlayer_metrics
	variables
trainable_variables
regularization_losses
!__call__
*"&call_and_return_all_conditional_losses
&""call_and_return_conditional_losses* 
:
Рtrace_0
Сtrace_1
Тtrace_2
Уtrace_3* 
:
Фtrace_0
Хtrace_1
Цtrace_2
Чtrace_3* 
Ў
Ш	variables
Щtrainable_variables
Ъregularization_losses
Ы	keras_api
Ь__call__
+Э&call_and_return_all_conditional_losses
Ю_random_generator*
* 
* 
* 

Яnon_trainable_variables
аlayers
бmetrics
 вlayer_regularization_losses
гlayer_metrics
$	variables
%trainable_variables
&regularization_losses
(__call__
*)&call_and_return_all_conditional_losses
&)"call_and_return_conditional_losses*
:
дtrace_0
еtrace_1
жtrace_2
зtrace_3* 
:
иtrace_0
йtrace_1
кtrace_2
лtrace_3* 

00
11*

00
11*
* 

мnon_trainable_variables
нlayers
оmetrics
 пlayer_regularization_losses
рlayer_metrics
*	variables
+trainable_variables
,regularization_losses
.__call__
*/&call_and_return_all_conditional_losses
&/"call_and_return_conditional_losses*

сtrace_0* 

тtrace_0* 
]W
VARIABLE_VALUEconv2d/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEconv2d/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 

уnon_trainable_variables
фlayers
хmetrics
 цlayer_regularization_losses
чlayer_metrics
3	variables
4trainable_variables
5regularization_losses
7__call__
*8&call_and_return_all_conditional_losses
&8"call_and_return_conditional_losses* 

шtrace_0* 

щtrace_0* 

?0
@1*

?0
@1*
* 

ъnon_trainable_variables
ыlayers
ьmetrics
 эlayer_regularization_losses
юlayer_metrics
9	variables
:trainable_variables
;regularization_losses
=__call__
*>&call_and_return_all_conditional_losses
&>"call_and_return_conditional_losses*

яtrace_0* 

№trace_0* 
_Y
VARIABLE_VALUEconv2d_1/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_1/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 

ёnon_trainable_variables
ђlayers
ѓmetrics
 єlayer_regularization_losses
ѕlayer_metrics
B	variables
Ctrainable_variables
Dregularization_losses
F__call__
*G&call_and_return_all_conditional_losses
&G"call_and_return_conditional_losses* 

іtrace_0* 

їtrace_0* 

N0
O1*

N0
O1*
* 

јnon_trainable_variables
љlayers
њmetrics
 ћlayer_regularization_losses
ќlayer_metrics
H	variables
Itrainable_variables
Jregularization_losses
L__call__
*M&call_and_return_all_conditional_losses
&M"call_and_return_conditional_losses*

§trace_0* 

ўtrace_0* 
_Y
VARIABLE_VALUEconv2d_2/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_2/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 

џnon_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
Q	variables
Rtrainable_variables
Sregularization_losses
U__call__
*V&call_and_return_all_conditional_losses
&V"call_and_return_conditional_losses* 

trace_0* 

trace_0* 

]0
^1*

]0
^1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
W	variables
Xtrainable_variables
Yregularization_losses
[__call__
*\&call_and_return_all_conditional_losses
&\"call_and_return_conditional_losses*

trace_0* 

trace_0* 
_Y
VARIABLE_VALUEconv2d_3/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_3/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
`	variables
atrainable_variables
bregularization_losses
d__call__
*e&call_and_return_all_conditional_losses
&e"call_and_return_conditional_losses* 

trace_0* 

trace_0* 

l0
m1*

l0
m1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
f	variables
gtrainable_variables
hregularization_losses
j__call__
*k&call_and_return_all_conditional_losses
&k"call_and_return_conditional_losses*

trace_0* 

trace_0* 
_Y
VARIABLE_VALUEconv2d_4/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_4/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
o	variables
ptrainable_variables
qregularization_losses
s__call__
*t&call_and_return_all_conditional_losses
&t"call_and_return_conditional_losses* 

 trace_0* 

Ёtrace_0* 

{0
|1*

{0
|1*
* 

Ђnon_trainable_variables
Ѓlayers
Єmetrics
 Ѕlayer_regularization_losses
Іlayer_metrics
u	variables
vtrainable_variables
wregularization_losses
y__call__
*z&call_and_return_all_conditional_losses
&z"call_and_return_conditional_losses*

Їtrace_0* 

Јtrace_0* 
_Y
VARIABLE_VALUEconv2d_5/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_5/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 

Љnon_trainable_variables
Њlayers
Ћmetrics
 Ќlayer_regularization_losses
­layer_metrics
~	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses* 

Ўtrace_0* 

Џtrace_0* 
* 
* 
* 

Аnon_trainable_variables
Бlayers
Вmetrics
 Гlayer_regularization_losses
Дlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses* 

Еtrace_0* 

Жtrace_0* 

0
1*

0
1*
* 

Зnon_trainable_variables
Иlayers
Йmetrics
 Кlayer_regularization_losses
Лlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*

Мtrace_0* 

Нtrace_0* 
\V
VARIABLE_VALUEdense/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUE
dense/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
* 

Оnon_trainable_variables
Пlayers
Рmetrics
 Сlayer_regularization_losses
Тlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*

Уtrace_0* 

Фtrace_0* 
^X
VARIABLE_VALUEdense_1/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_1/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16*

Х0
Ц1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
Ѓ
Ј0
Ч1
Ш2
Щ3
Ъ4
Ы5
Ь6
Э7
Ю8
Я9
а10
б11
в12
г13
д14
е15
ж16
з17
и18
й19
к20
л21
м22
н23
о24
п25
р26
с27
т28
у29
ф30
х31
ц32*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 

Ч0
Щ1
Ы2
Э3
Я4
б5
г6
е7
з8
й9
л10
н11
п12
с13
у14
х15*

Ш0
Ъ1
Ь2
Ю3
а4
в5
д6
ж7
и8
к9
м10
о11
р12
т13
ф14
ц15*
ш
чtrace_0
шtrace_1
щtrace_2
ъtrace_3
ыtrace_4
ьtrace_5
эtrace_6
юtrace_7
яtrace_8
№trace_9
ёtrace_10
ђtrace_11
ѓtrace_12
єtrace_13
ѕtrace_14
іtrace_15* 
* 
* 
* 
* 

їnon_trainable_variables
јlayers
љmetrics
 њlayer_regularization_losses
ћlayer_metrics
Џ	variables
Аtrainable_variables
Бregularization_losses
Г__call__
+Д&call_and_return_all_conditional_losses
'Д"call_and_return_conditional_losses* 

ќtrace_0* 

§trace_0* 
* 
* 
* 

ўnon_trainable_variables
џlayers
metrics
 layer_regularization_losses
layer_metrics
Е	variables
Жtrainable_variables
Зregularization_losses
Й__call__
+К&call_and_return_all_conditional_losses
'К"call_and_return_conditional_losses* 

trace_0* 

trace_0* 
* 

0
1* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
Ш	variables
Щtrainable_variables
Ъregularization_losses
Ь__call__
+Э&call_and_return_all_conditional_losses
'Э"call_and_return_conditional_losses* 

trace_0
trace_1* 

trace_0
trace_1* 


_generator*
* 

#0*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<
	variables
	keras_api

total

count*
M
	variables
	keras_api

total

count

_fn_kwargs*
_Y
VARIABLE_VALUEAdam/m/conv2d/kernel1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/conv2d/kernel1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEAdam/m/conv2d/bias1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEAdam/v/conv2d/bias1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/conv2d_1/kernel1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/conv2d_1/kernel1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/m/conv2d_1/bias1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/conv2d_1/bias1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/conv2d_2/kernel1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/conv2d_2/kernel2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/conv2d_2/bias2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/conv2d_2/bias2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/conv2d_3/kernel2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/conv2d_3/kernel2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/conv2d_3/bias2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/conv2d_3/bias2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/conv2d_4/kernel2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/conv2d_4/kernel2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/conv2d_4/bias2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/conv2d_4/bias2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/conv2d_5/kernel2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/conv2d_5/kernel2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/conv2d_5/bias2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/conv2d_5/bias2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/m/dense/kernel2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/dense/kernel2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEAdam/m/dense/bias2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEAdam/v/dense/bias2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/dense_1/kernel2optimizer/_variables/29/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/dense_1/kernel2optimizer/_variables/30/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/m/dense_1/bias2optimizer/_variables/31/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/dense_1/bias2optimizer/_variables/32/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 


_state_var*

0
1*

	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
z
VARIABLE_VALUErandom_flip/StateVarRlayer-1/layer-0/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Ќ
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename!conv2d/kernel/Read/ReadVariableOpconv2d/bias/Read/ReadVariableOp#conv2d_1/kernel/Read/ReadVariableOp!conv2d_1/bias/Read/ReadVariableOp#conv2d_2/kernel/Read/ReadVariableOp!conv2d_2/bias/Read/ReadVariableOp#conv2d_3/kernel/Read/ReadVariableOp!conv2d_3/bias/Read/ReadVariableOp#conv2d_4/kernel/Read/ReadVariableOp!conv2d_4/bias/Read/ReadVariableOp#conv2d_5/kernel/Read/ReadVariableOp!conv2d_5/bias/Read/ReadVariableOp dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOpiteration/Read/ReadVariableOp!learning_rate/Read/ReadVariableOp(Adam/m/conv2d/kernel/Read/ReadVariableOp(Adam/v/conv2d/kernel/Read/ReadVariableOp&Adam/m/conv2d/bias/Read/ReadVariableOp&Adam/v/conv2d/bias/Read/ReadVariableOp*Adam/m/conv2d_1/kernel/Read/ReadVariableOp*Adam/v/conv2d_1/kernel/Read/ReadVariableOp(Adam/m/conv2d_1/bias/Read/ReadVariableOp(Adam/v/conv2d_1/bias/Read/ReadVariableOp*Adam/m/conv2d_2/kernel/Read/ReadVariableOp*Adam/v/conv2d_2/kernel/Read/ReadVariableOp(Adam/m/conv2d_2/bias/Read/ReadVariableOp(Adam/v/conv2d_2/bias/Read/ReadVariableOp*Adam/m/conv2d_3/kernel/Read/ReadVariableOp*Adam/v/conv2d_3/kernel/Read/ReadVariableOp(Adam/m/conv2d_3/bias/Read/ReadVariableOp(Adam/v/conv2d_3/bias/Read/ReadVariableOp*Adam/m/conv2d_4/kernel/Read/ReadVariableOp*Adam/v/conv2d_4/kernel/Read/ReadVariableOp(Adam/m/conv2d_4/bias/Read/ReadVariableOp(Adam/v/conv2d_4/bias/Read/ReadVariableOp*Adam/m/conv2d_5/kernel/Read/ReadVariableOp*Adam/v/conv2d_5/kernel/Read/ReadVariableOp(Adam/m/conv2d_5/bias/Read/ReadVariableOp(Adam/v/conv2d_5/bias/Read/ReadVariableOp'Adam/m/dense/kernel/Read/ReadVariableOp'Adam/v/dense/kernel/Read/ReadVariableOp%Adam/m/dense/bias/Read/ReadVariableOp%Adam/v/dense/bias/Read/ReadVariableOp)Adam/m/dense_1/kernel/Read/ReadVariableOp)Adam/v/dense_1/kernel/Read/ReadVariableOp'Adam/m/dense_1/bias/Read/ReadVariableOp'Adam/v/dense_1/bias/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp(random_flip/StateVar/Read/ReadVariableOpConst*D
Tin=
;29		*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *'
f"R 
__inference__traced_save_82374
л

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d/kernelconv2d/biasconv2d_1/kernelconv2d_1/biasconv2d_2/kernelconv2d_2/biasconv2d_3/kernelconv2d_3/biasconv2d_4/kernelconv2d_4/biasconv2d_5/kernelconv2d_5/biasdense/kernel
dense/biasdense_1/kerneldense_1/bias	iterationlearning_rateAdam/m/conv2d/kernelAdam/v/conv2d/kernelAdam/m/conv2d/biasAdam/v/conv2d/biasAdam/m/conv2d_1/kernelAdam/v/conv2d_1/kernelAdam/m/conv2d_1/biasAdam/v/conv2d_1/biasAdam/m/conv2d_2/kernelAdam/v/conv2d_2/kernelAdam/m/conv2d_2/biasAdam/v/conv2d_2/biasAdam/m/conv2d_3/kernelAdam/v/conv2d_3/kernelAdam/m/conv2d_3/biasAdam/v/conv2d_3/biasAdam/m/conv2d_4/kernelAdam/v/conv2d_4/kernelAdam/m/conv2d_4/biasAdam/v/conv2d_4/biasAdam/m/conv2d_5/kernelAdam/v/conv2d_5/kernelAdam/m/conv2d_5/biasAdam/v/conv2d_5/biasAdam/m/dense/kernelAdam/v/dense/kernelAdam/m/dense/biasAdam/v/dense/biasAdam/m/dense_1/kernelAdam/v/dense_1/kernelAdam/m/dense_1/biasAdam/v/dense_1/biastotal_1count_1totalcountrandom_flip/StateVar*C
Tin<
:28*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 **
f%R#
!__inference__traced_restore_82549Ф
Я
V
"__inference__update_step_xla_81725
gradient"
variable:@@*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*'
_input_shapes
:@@: *
	_noinline(:P L
&
_output_shapes
:@@
"
_user_specified_name
gradient:($
"
_user_specified_name
variable

f
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_81943

inputs
identityЂ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
і
`
D__inference_rescaling_layer_call_and_return_conditional_losses_80555

inputs
identityK
Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *;M
Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    _
mulMulinputsCast/x:output:0*
T0*1
_output_shapes
:џџџџџџџџџd
addAddV2mul:z:0Cast_1/x:output:0*
T0*1
_output_shapes
:џџџџџџџџџY
IdentityIdentityadd:z:0*
T0*1
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ:Y U
1
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Я
V
"__inference__update_step_xla_81685
gradient"
variable: @*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*'
_input_shapes
: @: *
	_noinline(:P L
&
_output_shapes
: @
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
ВD
Ї
G__inference_sequential_2_layer_call_and_return_conditional_losses_81296
sequential_input&
conv2d_81248: 
conv2d_81250: (
conv2d_1_81254: @
conv2d_1_81256:@(
conv2d_2_81260:@@
conv2d_2_81262:@(
conv2d_3_81266:@@
conv2d_3_81268:@(
conv2d_4_81272:@@
conv2d_4_81274:@(
conv2d_5_81278:@@
conv2d_5_81280:@
dense_81285:	@
dense_81287:@
dense_1_81290:@

dense_1_81292:

identityЂconv2d/StatefulPartitionedCallЂ conv2d_1/StatefulPartitionedCallЂ conv2d_2/StatefulPartitionedCallЂ conv2d_3/StatefulPartitionedCallЂ conv2d_4/StatefulPartitionedCallЂ conv2d_5/StatefulPartitionedCallЂdense/StatefulPartitionedCallЂdense_1/StatefulPartitionedCallв
sequential/PartitionedCallPartitionedCallsequential_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_80558щ
sequential_1/PartitionedCallPartitionedCall#sequential/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_80620
conv2d/StatefulPartitionedCallStatefulPartitionedCall%sequential_1/PartitionedCall:output:0conv2d_81248conv2d_81250*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџўў *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_80818э
max_pooling2d/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_80735
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0conv2d_1_81254conv2d_1_81256*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ}}@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_80836ѓ
max_pooling2d_1/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ>>@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_80747
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0conv2d_2_81260conv2d_2_81262*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ<<@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_2_layer_call_and_return_conditional_losses_80854ѓ
max_pooling2d_2/PartitionedCallPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_80759
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_2/PartitionedCall:output:0conv2d_3_81266conv2d_3_81268*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_3_layer_call_and_return_conditional_losses_80872ѓ
max_pooling2d_3/PartitionedCallPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_80771
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_3/PartitionedCall:output:0conv2d_4_81272conv2d_4_81274*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_4_layer_call_and_return_conditional_losses_80890ѓ
max_pooling2d_4/PartitionedCallPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_80783
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_4/PartitionedCall:output:0conv2d_5_81278conv2d_5_81280*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_5_layer_call_and_return_conditional_losses_80908ѓ
max_pooling2d_5/PartitionedCallPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_80795л
flatten/PartitionedCallPartitionedCall(max_pooling2d_5/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_80921ў
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_81285dense_81287*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_80934
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_81290dense_1_81292*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_80951w
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
и
NoOpNoOp^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall!^conv2d_5/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:џџџџџџџџџ: : : : : : : : : : : : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:c _
1
_output_shapes
:џџџџџџџџџ
*
_user_specified_namesequential_input

c
G__inference_sequential_1_layer_call_and_return_conditional_losses_81853

inputs
identityK
random_flip/map/ShapeShapeinputs*
T0*
_output_shapes
:m
#random_flip/map/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%random_flip/map/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%random_flip/map/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ё
random_flip/map/strided_sliceStridedSlicerandom_flip/map/Shape:output:0,random_flip/map/strided_slice/stack:output:0.random_flip/map/strided_slice/stack_1:output:0.random_flip/map/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskv
+random_flip/map/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџт
random_flip/map/TensorArrayV2TensorListReserve4random_flip/map/TensorArrayV2/element_shape:output:0&random_flip/map/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
Erandom_flip/map/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"         љ
7random_flip/map/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorinputsNrandom_flip/map/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвW
random_flip/map/ConstConst*
_output_shapes
: *
dtype0*
value	B : x
-random_flip/map/TensorArrayV2_1/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџц
random_flip/map/TensorArrayV2_1TensorListReserve6random_flip/map/TensorArrayV2_1/element_shape:output:0&random_flip/map/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвd
"random_flip/map/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ф
random_flip/map/whileStatelessWhile+random_flip/map/while/loop_counter:output:0&random_flip/map/strided_slice:output:0random_flip/map/Const:output:0(random_flip/map/TensorArrayV2_1:handle:0&random_flip/map/strided_slice:output:0Grandom_flip/map/TensorArrayUnstack/TensorListFromTensor:output_handle:0*
T

2*
_lower_using_switch_merge(*
_num_original_outputs* 
_output_shapes
: : : : : : * 
_read_only_resource_inputs
 *
_stateful_parallelism( *,
body$R"
 random_flip_map_while_body_81810*,
cond$R"
 random_flip_map_while_cond_81809*
output_shapes
: : : : : : 
@random_flip/map/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"         ј
2random_flip/map/TensorArrayV2Stack/TensorListStackTensorListStackrandom_flip/map/while:output:3Irandom_flip/map/TensorArrayV2Stack/TensorListStack/element_shape:output:0*1
_output_shapes
:џџџџџџџџџ*
element_dtype0
IdentityIdentity;random_flip/map/TensorArrayV2Stack/TensorListStack:tensor:0*
T0*1
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ:Y U
1
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
і
`
D__inference_rescaling_layer_call_and_return_conditional_losses_82108

inputs
identityK
Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *;M
Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    _
mulMulinputsCast/x:output:0*
T0*1
_output_shapes
:џџџџџџџџџd
addAddV2mul:z:0Cast_1/x:output:0*
T0*1
_output_shapes
:џџџџџџџџџY
IdentityIdentityadd:z:0*
T0*1
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ:Y U
1
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs

ќ
C__inference_conv2d_5_layer_call_and_return_conditional_losses_80908

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
я
S
,__inference_sequential_1_layer_call_fn_80623
random_flip_input
identityЪ
PartitionedCallPartitionedCallrandom_flip_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_80620j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ:d `
1
_output_shapes
:џџџџџџџџџ
+
_user_specified_namerandom_flip_input
ц
Щ
,__inference_sequential_2_layer_call_fn_81427

inputs!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@#
	unknown_3:@@
	unknown_4:@#
	unknown_5:@@
	unknown_6:@#
	unknown_7:@@
	unknown_8:@#
	unknown_9:@@

unknown_10:@

unknown_11:	@

unknown_12:@

unknown_13:@


unknown_14:

identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ
*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_sequential_2_layer_call_and_return_conditional_losses_80958o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:џџџџџџџџџ: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Ћ
J
"__inference__update_step_xla_81740
gradient
variable:@*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:@: *
	_noinline(:D @

_output_shapes
:@
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
Я
V
"__inference__update_step_xla_81695
gradient"
variable:@@*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*'
_input_shapes
:@@: *
	_noinline(:P L
&
_output_shapes
:@@
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
D

G__inference_sequential_2_layer_call_and_return_conditional_losses_80958

inputs&
conv2d_80819: 
conv2d_80821: (
conv2d_1_80837: @
conv2d_1_80839:@(
conv2d_2_80855:@@
conv2d_2_80857:@(
conv2d_3_80873:@@
conv2d_3_80875:@(
conv2d_4_80891:@@
conv2d_4_80893:@(
conv2d_5_80909:@@
conv2d_5_80911:@
dense_80935:	@
dense_80937:@
dense_1_80952:@

dense_1_80954:

identityЂconv2d/StatefulPartitionedCallЂ conv2d_1/StatefulPartitionedCallЂ conv2d_2/StatefulPartitionedCallЂ conv2d_3/StatefulPartitionedCallЂ conv2d_4/StatefulPartitionedCallЂ conv2d_5/StatefulPartitionedCallЂdense/StatefulPartitionedCallЂdense_1/StatefulPartitionedCallШ
sequential/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_80558щ
sequential_1/PartitionedCallPartitionedCall#sequential/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_80620
conv2d/StatefulPartitionedCallStatefulPartitionedCall%sequential_1/PartitionedCall:output:0conv2d_80819conv2d_80821*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџўў *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_80818э
max_pooling2d/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_80735
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0conv2d_1_80837conv2d_1_80839*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ}}@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_80836ѓ
max_pooling2d_1/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ>>@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_80747
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0conv2d_2_80855conv2d_2_80857*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ<<@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_2_layer_call_and_return_conditional_losses_80854ѓ
max_pooling2d_2/PartitionedCallPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_80759
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_2/PartitionedCall:output:0conv2d_3_80873conv2d_3_80875*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_3_layer_call_and_return_conditional_losses_80872ѓ
max_pooling2d_3/PartitionedCallPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_80771
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_3/PartitionedCall:output:0conv2d_4_80891conv2d_4_80893*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_4_layer_call_and_return_conditional_losses_80890ѓ
max_pooling2d_4/PartitionedCallPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_80783
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_4/PartitionedCall:output:0conv2d_5_80909conv2d_5_80911*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_5_layer_call_and_return_conditional_losses_80908ѓ
max_pooling2d_5/PartitionedCallPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_80795л
flatten/PartitionedCallPartitionedCall(max_pooling2d_5/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_80921ў
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_80935dense_80937*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_80934
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_80952dense_1_80954*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_80951w
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
и
NoOpNoOp^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall!^conv2d_5/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:џџџџџџџџџ: : : : : : : : : : : : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:Y U
1
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs

c
G__inference_sequential_1_layer_call_and_return_conditional_losses_81794

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ:Y U
1
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
ц
Щ
,__inference_sequential_2_layer_call_fn_81464

inputs!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@#
	unknown_3:@@
	unknown_4:@#
	unknown_5:@@
	unknown_6:@#
	unknown_7:@@
	unknown_8:@#
	unknown_9:@@

unknown_10:@

unknown_11:	@

unknown_12:@

unknown_13:@


unknown_14:

identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ
*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_sequential_2_layer_call_and_return_conditional_losses_81171o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:џџџџџџџџџ: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
­
_
C__inference_resizing_layer_call_and_return_conditional_losses_82095

inputs
identity\
resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"      
resize/ResizeBilinearResizeBilinearinputsresize/size:output:0*
T0*1
_output_shapes
:џџџџџџџџџ*
half_pixel_centers(x
IdentityIdentity&resize/ResizeBilinear:resized_images:0*
T0*1
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ:Y U
1
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Ь
G
+__inference_random_flip_layer_call_fn_82118

inputs
identityО
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_random_flip_layer_call_and_return_conditional_losses_80693j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ:Y U
1
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs

ќ
C__inference_conv2d_4_layer_call_and_return_conditional_losses_81993

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
Ћ
J
"__inference__update_step_xla_81690
gradient
variable:@*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:@: *
	_noinline(:D @

_output_shapes
:@
"
_user_specified_name
gradient:($
"
_user_specified_name
variable

f
J__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_80771

inputs
identityЂ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
ы

(__inference_conv2d_1_layer_call_fn_81892

inputs!
unknown: @
	unknown_0:@
identityЂStatefulPartitionedCallу
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ}}@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_80836w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ}}@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs
Ъ
F
*__inference_sequential_layer_call_fn_81760

inputs
identityН
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_80586j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ:Y U
1
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs


ѓ
B__inference_dense_1_layer_call_and_return_conditional_losses_82084

inputs0
matmul_readvariableop_resource:@
-
biasadd_readvariableop_resource:

identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs

f
J__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_82033

inputs
identityЂ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Я
V
"__inference__update_step_xla_81715
gradient"
variable:@@*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*'
_input_shapes
:@@: *
	_noinline(:P L
&
_output_shapes
:@@
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
ы

(__inference_conv2d_4_layer_call_fn_81982

inputs!
unknown:@@
	unknown_0:@
identityЂStatefulPartitionedCallу
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_4_layer_call_and_return_conditional_losses_80890w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
Я
V
"__inference__update_step_xla_81675
gradient"
variable: *
_XlaMustCompile(*(
_construction_contextkEagerRuntime*'
_input_shapes
: : *
	_noinline(:P L
&
_output_shapes
: 
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
Ж

map_while_body_82138$
 map_while_map_while_loop_counter
map_while_map_strided_slice
map_while_placeholder
map_while_placeholder_1#
map_while_map_strided_slice_1_0_
[map_while_tensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensor_0
map_while_identity
map_while_identity_1
map_while_identity_2
map_while_identity_3!
map_while_map_strided_slice_1]
Ymap_while_tensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensor
;map/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"         З
-map/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem[map_while_tensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensor_0map_while_placeholderDmap/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*$
_output_shapes
:*
element_dtype0м
)map/while/flip_up_down/control_dependencyIdentity4map/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*@
_class6
42loc:@map/while/TensorArrayV2Read/TensorListGetItem*$
_output_shapes
:o
%map/while/flip_up_down/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: Р
 map/while/flip_up_down/ReverseV2	ReverseV22map/while/flip_up_down/control_dependency:output:0.map/while/flip_up_down/ReverseV2/axis:output:0*
T0*$
_output_shapes
:о
.map/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemmap_while_placeholder_1map_while_placeholder)map/while/flip_up_down/ReverseV2:output:0*
_output_shapes
: *
element_dtype0:щшвQ
map/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :h
map/while/addAddV2map_while_placeholdermap/while/add/y:output:0*
T0*
_output_shapes
: S
map/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :w
map/while/add_1AddV2 map_while_map_while_loop_countermap/while/add_1/y:output:0*
T0*
_output_shapes
: T
map/while/IdentityIdentitymap/while/add_1:z:0*
T0*
_output_shapes
: ^
map/while/Identity_1Identitymap_while_map_strided_slice*
T0*
_output_shapes
: T
map/while/Identity_2Identitymap/while/add:z:0*
T0*
_output_shapes
: 
map/while/Identity_3Identity>map/while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: "1
map_while_identitymap/while/Identity:output:0"5
map_while_identity_1map/while/Identity_1:output:0"5
map_while_identity_2map/while/Identity_2:output:0"5
map_while_identity_3map/while/Identity_3:output:0"@
map_while_map_strided_slice_1map_while_map_strided_slice_1_0"И
Ymap_while_tensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensor[map_while_tensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*
_input_shapes
: : : : : : : 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 

f
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_80747

inputs
identityЂ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Ћ
J
"__inference__update_step_xla_81680
gradient
variable: *
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

: : *
	_noinline(:D @

_output_shapes
: 
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
Й
K
/__inference_max_pooling2d_4_layer_call_fn_81998

inputs
identityл
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_80783
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
	
a
E__inference_sequential_layer_call_and_return_conditional_losses_81780

inputs
identitye
resizing/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"      ­
resizing/resize/ResizeBilinearResizeBilinearinputsresizing/resize/size:output:0*
T0*1
_output_shapes
:џџџџџџџџџ*
half_pixel_centers(U
rescaling/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *;W
rescaling/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    
rescaling/mulMul/resizing/resize/ResizeBilinear:resized_images:0rescaling/Cast/x:output:0*
T0*1
_output_shapes
:џџџџџџџџџ
rescaling/addAddV2rescaling/mul:z:0rescaling/Cast_1/x:output:0*
T0*1
_output_shapes
:џџџџџџџџџc
IdentityIdentityrescaling/add:z:0*
T0*1
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ:Y U
1
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Й
K
/__inference_max_pooling2d_2_layer_call_fn_81938

inputs
identityл
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_80759
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs

c
G__inference_sequential_1_layer_call_and_return_conditional_losses_80708

inputs
identityЪ
random_flip/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_random_flip_layer_call_and_return_conditional_losses_80693v
IdentityIdentity$random_flip/PartitionedCall:output:0*
T0*1
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ:Y U
1
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Ћ
J
"__inference__update_step_xla_81730
gradient
variable:@*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:@: *
	_noinline(:D @

_output_shapes
:@
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
ВD
Ї
G__inference_sequential_2_layer_call_and_return_conditional_losses_81349
sequential_input&
conv2d_81301: 
conv2d_81303: (
conv2d_1_81307: @
conv2d_1_81309:@(
conv2d_2_81313:@@
conv2d_2_81315:@(
conv2d_3_81319:@@
conv2d_3_81321:@(
conv2d_4_81325:@@
conv2d_4_81327:@(
conv2d_5_81331:@@
conv2d_5_81333:@
dense_81338:	@
dense_81340:@
dense_1_81343:@

dense_1_81345:

identityЂconv2d/StatefulPartitionedCallЂ conv2d_1/StatefulPartitionedCallЂ conv2d_2/StatefulPartitionedCallЂ conv2d_3/StatefulPartitionedCallЂ conv2d_4/StatefulPartitionedCallЂ conv2d_5/StatefulPartitionedCallЂdense/StatefulPartitionedCallЂdense_1/StatefulPartitionedCallв
sequential/PartitionedCallPartitionedCallsequential_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_80586щ
sequential_1/PartitionedCallPartitionedCall#sequential/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_80708
conv2d/StatefulPartitionedCallStatefulPartitionedCall%sequential_1/PartitionedCall:output:0conv2d_81301conv2d_81303*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџўў *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_80818э
max_pooling2d/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_80735
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0conv2d_1_81307conv2d_1_81309*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ}}@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_80836ѓ
max_pooling2d_1/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ>>@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_80747
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0conv2d_2_81313conv2d_2_81315*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ<<@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_2_layer_call_and_return_conditional_losses_80854ѓ
max_pooling2d_2/PartitionedCallPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_80759
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_2/PartitionedCall:output:0conv2d_3_81319conv2d_3_81321*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_3_layer_call_and_return_conditional_losses_80872ѓ
max_pooling2d_3/PartitionedCallPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_80771
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_3/PartitionedCall:output:0conv2d_4_81325conv2d_4_81327*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_4_layer_call_and_return_conditional_losses_80890ѓ
max_pooling2d_4/PartitionedCallPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_80783
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_4/PartitionedCall:output:0conv2d_5_81331conv2d_5_81333*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_5_layer_call_and_return_conditional_losses_80908ѓ
max_pooling2d_5/PartitionedCallPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_80795л
flatten/PartitionedCallPartitionedCall(max_pooling2d_5/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_80921ў
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_81338dense_81340*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_80934
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_81343dense_1_81345*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_80951w
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
и
NoOpNoOp^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall!^conv2d_5/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:џџџџџџџџџ: : : : : : : : : : : : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:c _
1
_output_shapes
:џџџџџџџџџ
*
_user_specified_namesequential_input
Ё
n
G__inference_sequential_1_layer_call_and_return_conditional_losses_80721
random_flip_input
identityе
random_flip/PartitionedCallPartitionedCallrandom_flip_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_random_flip_layer_call_and_return_conditional_losses_80617v
IdentityIdentity$random_flip/PartitionedCall:output:0*
T0*1
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ:d `
1
_output_shapes
:џџџџџџџџџ
+
_user_specified_namerandom_flip_input

ќ
C__inference_conv2d_2_layer_call_and_return_conditional_losses_80854

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ<<@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ<<@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ<<@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ<<@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ>>@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ>>@
 
_user_specified_nameinputs
Я
V
"__inference__update_step_xla_81705
gradient"
variable:@@*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*'
_input_shapes
:@@: *
	_noinline(:P L
&
_output_shapes
:@@
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
Ф
^
B__inference_flatten_layer_call_and_return_conditional_losses_82044

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:џџџџџџџџџY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ@:W S
/
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
ы

(__inference_conv2d_2_layer_call_fn_81922

inputs!
unknown:@@
	unknown_0:@
identityЂStatefulPartitionedCallу
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ<<@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_2_layer_call_and_return_conditional_losses_80854w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ<<@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ>>@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ>>@
 
_user_specified_nameinputs
Ш
E
)__inference_rescaling_layer_call_fn_82100

inputs
identityМ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_rescaling_layer_call_and_return_conditional_losses_80555j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ:Y U
1
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs

d
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_80735

inputs
identityЂ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Щ

 
 random_flip_map_while_cond_81809<
8random_flip_map_while_random_flip_map_while_loop_counter7
3random_flip_map_while_random_flip_map_strided_slice%
!random_flip_map_while_placeholder'
#random_flip_map_while_placeholder_1<
8random_flip_map_while_less_random_flip_map_strided_sliceS
Orandom_flip_map_while_random_flip_map_while_cond_81809___redundant_placeholder0"
random_flip_map_while_identity
 
random_flip/map/while/LessLess!random_flip_map_while_placeholder8random_flip_map_while_less_random_flip_map_strided_slice*
T0*
_output_shapes
: Д
random_flip/map/while/Less_1Less8random_flip_map_while_random_flip_map_while_loop_counter3random_flip_map_while_random_flip_map_strided_slice*
T0*
_output_shapes
: 
 random_flip/map/while/LogicalAnd
LogicalAnd random_flip/map/while/Less_1:z:0random_flip/map/while/Less:z:0*
_output_shapes
: q
random_flip/map/while/IdentityIdentity$random_flip/map/while/LogicalAnd:z:0*
T0
*
_output_shapes
: "I
random_flip_map_while_identity'random_flip/map/while/Identity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
: : : : : :: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
:
К
O
"__inference__update_step_xla_81735
gradient
variable:	@*
_XlaMustCompile(*(
_construction_contextkEagerRuntime* 
_input_shapes
:	@: *
	_noinline(:I E

_output_shapes
:	@
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
Ё
n
G__inference_sequential_1_layer_call_and_return_conditional_losses_80726
random_flip_input
identityе
random_flip/PartitionedCallPartitionedCallrandom_flip_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_random_flip_layer_call_and_return_conditional_losses_80693v
IdentityIdentity$random_flip/PartitionedCall:output:0*
T0*1
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ:d `
1
_output_shapes
:џџџџџџџџџ
+
_user_specified_namerandom_flip_input

г
,__inference_sequential_2_layer_call_fn_81243
sequential_input!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@#
	unknown_3:@@
	unknown_4:@#
	unknown_5:@@
	unknown_6:@#
	unknown_7:@@
	unknown_8:@#
	unknown_9:@@

unknown_10:@

unknown_11:	@

unknown_12:@

unknown_13:@


unknown_14:

identityЂStatefulPartitionedCallЄ
StatefulPartitionedCallStatefulPartitionedCallsequential_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ
*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_sequential_2_layer_call_and_return_conditional_losses_81171o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:џџџџџџџџџ: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:c _
1
_output_shapes
:џџџџџџџџџ
*
_user_specified_namesequential_input
Ю
H
,__inference_sequential_1_layer_call_fn_81785

inputs
identityП
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_80620j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ:Y U
1
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
мх
"
!__inference__traced_restore_82549
file_prefix8
assignvariableop_conv2d_kernel: ,
assignvariableop_1_conv2d_bias: <
"assignvariableop_2_conv2d_1_kernel: @.
 assignvariableop_3_conv2d_1_bias:@<
"assignvariableop_4_conv2d_2_kernel:@@.
 assignvariableop_5_conv2d_2_bias:@<
"assignvariableop_6_conv2d_3_kernel:@@.
 assignvariableop_7_conv2d_3_bias:@<
"assignvariableop_8_conv2d_4_kernel:@@.
 assignvariableop_9_conv2d_4_bias:@=
#assignvariableop_10_conv2d_5_kernel:@@/
!assignvariableop_11_conv2d_5_bias:@3
 assignvariableop_12_dense_kernel:	@,
assignvariableop_13_dense_bias:@4
"assignvariableop_14_dense_1_kernel:@
.
 assignvariableop_15_dense_1_bias:
'
assignvariableop_16_iteration:	 +
!assignvariableop_17_learning_rate: B
(assignvariableop_18_adam_m_conv2d_kernel: B
(assignvariableop_19_adam_v_conv2d_kernel: 4
&assignvariableop_20_adam_m_conv2d_bias: 4
&assignvariableop_21_adam_v_conv2d_bias: D
*assignvariableop_22_adam_m_conv2d_1_kernel: @D
*assignvariableop_23_adam_v_conv2d_1_kernel: @6
(assignvariableop_24_adam_m_conv2d_1_bias:@6
(assignvariableop_25_adam_v_conv2d_1_bias:@D
*assignvariableop_26_adam_m_conv2d_2_kernel:@@D
*assignvariableop_27_adam_v_conv2d_2_kernel:@@6
(assignvariableop_28_adam_m_conv2d_2_bias:@6
(assignvariableop_29_adam_v_conv2d_2_bias:@D
*assignvariableop_30_adam_m_conv2d_3_kernel:@@D
*assignvariableop_31_adam_v_conv2d_3_kernel:@@6
(assignvariableop_32_adam_m_conv2d_3_bias:@6
(assignvariableop_33_adam_v_conv2d_3_bias:@D
*assignvariableop_34_adam_m_conv2d_4_kernel:@@D
*assignvariableop_35_adam_v_conv2d_4_kernel:@@6
(assignvariableop_36_adam_m_conv2d_4_bias:@6
(assignvariableop_37_adam_v_conv2d_4_bias:@D
*assignvariableop_38_adam_m_conv2d_5_kernel:@@D
*assignvariableop_39_adam_v_conv2d_5_kernel:@@6
(assignvariableop_40_adam_m_conv2d_5_bias:@6
(assignvariableop_41_adam_v_conv2d_5_bias:@:
'assignvariableop_42_adam_m_dense_kernel:	@:
'assignvariableop_43_adam_v_dense_kernel:	@3
%assignvariableop_44_adam_m_dense_bias:@3
%assignvariableop_45_adam_v_dense_bias:@;
)assignvariableop_46_adam_m_dense_1_kernel:@
;
)assignvariableop_47_adam_v_dense_1_kernel:@
5
'assignvariableop_48_adam_m_dense_1_bias:
5
'assignvariableop_49_adam_v_dense_1_bias:
%
assignvariableop_50_total_1: %
assignvariableop_51_count_1: #
assignvariableop_52_total: #
assignvariableop_53_count: 6
(assignvariableop_54_random_flip_statevar:	
identity_56ЂAssignVariableOpЂAssignVariableOp_1ЂAssignVariableOp_10ЂAssignVariableOp_11ЂAssignVariableOp_12ЂAssignVariableOp_13ЂAssignVariableOp_14ЂAssignVariableOp_15ЂAssignVariableOp_16ЂAssignVariableOp_17ЂAssignVariableOp_18ЂAssignVariableOp_19ЂAssignVariableOp_2ЂAssignVariableOp_20ЂAssignVariableOp_21ЂAssignVariableOp_22ЂAssignVariableOp_23ЂAssignVariableOp_24ЂAssignVariableOp_25ЂAssignVariableOp_26ЂAssignVariableOp_27ЂAssignVariableOp_28ЂAssignVariableOp_29ЂAssignVariableOp_3ЂAssignVariableOp_30ЂAssignVariableOp_31ЂAssignVariableOp_32ЂAssignVariableOp_33ЂAssignVariableOp_34ЂAssignVariableOp_35ЂAssignVariableOp_36ЂAssignVariableOp_37ЂAssignVariableOp_38ЂAssignVariableOp_39ЂAssignVariableOp_4ЂAssignVariableOp_40ЂAssignVariableOp_41ЂAssignVariableOp_42ЂAssignVariableOp_43ЂAssignVariableOp_44ЂAssignVariableOp_45ЂAssignVariableOp_46ЂAssignVariableOp_47ЂAssignVariableOp_48ЂAssignVariableOp_49ЂAssignVariableOp_5ЂAssignVariableOp_50ЂAssignVariableOp_51ЂAssignVariableOp_52ЂAssignVariableOp_53ЂAssignVariableOp_54ЂAssignVariableOp_6ЂAssignVariableOp_7ЂAssignVariableOp_8ЂAssignVariableOp_9
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:8*
dtype0*­
valueЃB 8B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/29/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/30/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/31/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/32/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer-1/layer-0/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHс
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:8*
dtype0*
valuezBx8B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B Й
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*і
_output_shapesу
р::::::::::::::::::::::::::::::::::::::::::::::::::::::::*F
dtypes<
:28		[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:Б
AssignVariableOpAssignVariableOpassignvariableop_conv2d_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:Е
AssignVariableOp_1AssignVariableOpassignvariableop_1_conv2d_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:Й
AssignVariableOp_2AssignVariableOp"assignvariableop_2_conv2d_1_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:З
AssignVariableOp_3AssignVariableOp assignvariableop_3_conv2d_1_biasIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:Й
AssignVariableOp_4AssignVariableOp"assignvariableop_4_conv2d_2_kernelIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:З
AssignVariableOp_5AssignVariableOp assignvariableop_5_conv2d_2_biasIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:Й
AssignVariableOp_6AssignVariableOp"assignvariableop_6_conv2d_3_kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:З
AssignVariableOp_7AssignVariableOp assignvariableop_7_conv2d_3_biasIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:Й
AssignVariableOp_8AssignVariableOp"assignvariableop_8_conv2d_4_kernelIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:З
AssignVariableOp_9AssignVariableOp assignvariableop_9_conv2d_4_biasIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_10AssignVariableOp#assignvariableop_10_conv2d_5_kernelIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_11AssignVariableOp!assignvariableop_11_conv2d_5_biasIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:Й
AssignVariableOp_12AssignVariableOp assignvariableop_12_dense_kernelIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:З
AssignVariableOp_13AssignVariableOpassignvariableop_13_dense_biasIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:Л
AssignVariableOp_14AssignVariableOp"assignvariableop_14_dense_1_kernelIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:Й
AssignVariableOp_15AssignVariableOp assignvariableop_15_dense_1_biasIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0	*
_output_shapes
:Ж
AssignVariableOp_16AssignVariableOpassignvariableop_16_iterationIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_17AssignVariableOp!assignvariableop_17_learning_rateIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_18AssignVariableOp(assignvariableop_18_adam_m_conv2d_kernelIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_19AssignVariableOp(assignvariableop_19_adam_v_conv2d_kernelIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:П
AssignVariableOp_20AssignVariableOp&assignvariableop_20_adam_m_conv2d_biasIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:П
AssignVariableOp_21AssignVariableOp&assignvariableop_21_adam_v_conv2d_biasIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_22AssignVariableOp*assignvariableop_22_adam_m_conv2d_1_kernelIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_23AssignVariableOp*assignvariableop_23_adam_v_conv2d_1_kernelIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_24AssignVariableOp(assignvariableop_24_adam_m_conv2d_1_biasIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_25AssignVariableOp(assignvariableop_25_adam_v_conv2d_1_biasIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_26AssignVariableOp*assignvariableop_26_adam_m_conv2d_2_kernelIdentity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_27AssignVariableOp*assignvariableop_27_adam_v_conv2d_2_kernelIdentity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_28AssignVariableOp(assignvariableop_28_adam_m_conv2d_2_biasIdentity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_29AssignVariableOp(assignvariableop_29_adam_v_conv2d_2_biasIdentity_29:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_30AssignVariableOp*assignvariableop_30_adam_m_conv2d_3_kernelIdentity_30:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_31AssignVariableOp*assignvariableop_31_adam_v_conv2d_3_kernelIdentity_31:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_32AssignVariableOp(assignvariableop_32_adam_m_conv2d_3_biasIdentity_32:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_33AssignVariableOp(assignvariableop_33_adam_v_conv2d_3_biasIdentity_33:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_34AssignVariableOp*assignvariableop_34_adam_m_conv2d_4_kernelIdentity_34:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_35AssignVariableOp*assignvariableop_35_adam_v_conv2d_4_kernelIdentity_35:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_36AssignVariableOp(assignvariableop_36_adam_m_conv2d_4_biasIdentity_36:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_37AssignVariableOp(assignvariableop_37_adam_v_conv2d_4_biasIdentity_37:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_38AssignVariableOp*assignvariableop_38_adam_m_conv2d_5_kernelIdentity_38:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_39AssignVariableOp*assignvariableop_39_adam_v_conv2d_5_kernelIdentity_39:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_40AssignVariableOp(assignvariableop_40_adam_m_conv2d_5_biasIdentity_40:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_41AssignVariableOp(assignvariableop_41_adam_v_conv2d_5_biasIdentity_41:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_42AssignVariableOp'assignvariableop_42_adam_m_dense_kernelIdentity_42:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_43AssignVariableOp'assignvariableop_43_adam_v_dense_kernelIdentity_43:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:О
AssignVariableOp_44AssignVariableOp%assignvariableop_44_adam_m_dense_biasIdentity_44:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:О
AssignVariableOp_45AssignVariableOp%assignvariableop_45_adam_v_dense_biasIdentity_45:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:Т
AssignVariableOp_46AssignVariableOp)assignvariableop_46_adam_m_dense_1_kernelIdentity_46:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:Т
AssignVariableOp_47AssignVariableOp)assignvariableop_47_adam_v_dense_1_kernelIdentity_47:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_48AssignVariableOp'assignvariableop_48_adam_m_dense_1_biasIdentity_48:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_49AssignVariableOp'assignvariableop_49_adam_v_dense_1_biasIdentity_49:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:Д
AssignVariableOp_50AssignVariableOpassignvariableop_50_total_1Identity_50:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:Д
AssignVariableOp_51AssignVariableOpassignvariableop_51_count_1Identity_51:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:В
AssignVariableOp_52AssignVariableOpassignvariableop_52_totalIdentity_52:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:В
AssignVariableOp_53AssignVariableOpassignvariableop_53_countIdentity_53:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0	*
_output_shapes
:С
AssignVariableOp_54AssignVariableOp(assignvariableop_54_random_flip_statevarIdentity_54:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 

Identity_55Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_56IdentityIdentity_55:output:0^NoOp_1*
T0*
_output_shapes
: і	
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_56Identity_56:output:0*
_input_shapesr
p: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
ђ
i
E__inference_sequential_layer_call_and_return_conditional_losses_80600
resizing_input
identityЬ
resizing/PartitionedCallPartitionedCallresizing_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_resizing_layer_call_and_return_conditional_losses_80545с
rescaling/PartitionedCallPartitionedCall!resizing/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_rescaling_layer_call_and_return_conditional_losses_80555t
IdentityIdentity"rescaling/PartitionedCall:output:0*
T0*1
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ:a ]
1
_output_shapes
:џџџџџџџџџ
(
_user_specified_nameresizing_input
к
a
E__inference_sequential_layer_call_and_return_conditional_losses_80586

inputs
identityФ
resizing/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_resizing_layer_call_and_return_conditional_losses_80545с
rescaling/PartitionedCallPartitionedCall!resizing/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_rescaling_layer_call_and_return_conditional_losses_80555t
IdentityIdentity"rescaling/PartitionedCall:output:0*
T0*1
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ:Y U
1
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Р

%__inference_dense_layer_call_fn_82053

inputs
unknown:	@
	unknown_0:@
identityЂStatefulPartitionedCallи
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_80934o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
д
Ъ
#__inference_signature_wrapper_81390
sequential_input!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@#
	unknown_3:@@
	unknown_4:@#
	unknown_5:@@
	unknown_6:@#
	unknown_7:@@
	unknown_8:@#
	unknown_9:@@

unknown_10:@

unknown_11:	@

unknown_12:@

unknown_13:@


unknown_14:

identityЂStatefulPartitionedCall§
StatefulPartitionedCallStatefulPartitionedCallsequential_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ
*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *)
f$R"
 __inference__wrapped_model_80532o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:џџџџџџџџџ: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:c _
1
_output_shapes
:џџџџџџџџџ
*
_user_specified_namesequential_input
я
S
,__inference_sequential_1_layer_call_fn_80716
random_flip_input
identityЪ
PartitionedCallPartitionedCallrandom_flip_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_80708j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ:d `
1
_output_shapes
:џџџџџџџџџ
+
_user_specified_namerandom_flip_input
ю
b
F__inference_random_flip_layer_call_and_return_conditional_losses_82181

inputs
identity?
	map/ShapeShapeinputs*
T0*
_output_shapes
:a
map/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: c
map/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:c
map/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:х
map/strided_sliceStridedSlicemap/Shape:output:0 map/strided_slice/stack:output:0"map/strided_slice/stack_1:output:0"map/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskj
map/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџО
map/TensorArrayV2TensorListReserve(map/TensorArrayV2/element_shape:output:0map/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
9map/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"         с
+map/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorinputsBmap/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвK
	map/ConstConst*
_output_shapes
: *
dtype0*
value	B : l
!map/TensorArrayV2_1/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџТ
map/TensorArrayV2_1TensorListReserve*map/TensorArrayV2_1/element_shape:output:0map/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвX
map/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ј
	map/whileStatelessWhilemap/while/loop_counter:output:0map/strided_slice:output:0map/Const:output:0map/TensorArrayV2_1:handle:0map/strided_slice:output:0;map/TensorArrayUnstack/TensorListFromTensor:output_handle:0*
T

2*
_lower_using_switch_merge(*
_num_original_outputs* 
_output_shapes
: : : : : : * 
_read_only_resource_inputs
 *
_stateful_parallelism( * 
bodyR
map_while_body_82138* 
condR
map_while_cond_82137*
output_shapes
: : : : : : 
4map/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"         д
&map/TensorArrayV2Stack/TensorListStackTensorListStackmap/while:output:3=map/TensorArrayV2Stack/TensorListStack/element_shape:output:0*1
_output_shapes
:џџџџџџџџџ*
element_dtype0
IdentityIdentity/map/TensorArrayV2Stack/TensorListStack:tensor:0*
T0*1
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ:Y U
1
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
С

'__inference_dense_1_layer_call_fn_82073

inputs
unknown:@

	unknown_0:

identityЂStatefulPartitionedCallк
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_80951o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
Ю
H
,__inference_sequential_1_layer_call_fn_81790

inputs
identityП
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_80708j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ:Y U
1
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Ђn
В
 __inference__wrapped_model_80532
sequential_inputL
2sequential_2_conv2d_conv2d_readvariableop_resource: A
3sequential_2_conv2d_biasadd_readvariableop_resource: N
4sequential_2_conv2d_1_conv2d_readvariableop_resource: @C
5sequential_2_conv2d_1_biasadd_readvariableop_resource:@N
4sequential_2_conv2d_2_conv2d_readvariableop_resource:@@C
5sequential_2_conv2d_2_biasadd_readvariableop_resource:@N
4sequential_2_conv2d_3_conv2d_readvariableop_resource:@@C
5sequential_2_conv2d_3_biasadd_readvariableop_resource:@N
4sequential_2_conv2d_4_conv2d_readvariableop_resource:@@C
5sequential_2_conv2d_4_biasadd_readvariableop_resource:@N
4sequential_2_conv2d_5_conv2d_readvariableop_resource:@@C
5sequential_2_conv2d_5_biasadd_readvariableop_resource:@D
1sequential_2_dense_matmul_readvariableop_resource:	@@
2sequential_2_dense_biasadd_readvariableop_resource:@E
3sequential_2_dense_1_matmul_readvariableop_resource:@
B
4sequential_2_dense_1_biasadd_readvariableop_resource:

identityЂ*sequential_2/conv2d/BiasAdd/ReadVariableOpЂ)sequential_2/conv2d/Conv2D/ReadVariableOpЂ,sequential_2/conv2d_1/BiasAdd/ReadVariableOpЂ+sequential_2/conv2d_1/Conv2D/ReadVariableOpЂ,sequential_2/conv2d_2/BiasAdd/ReadVariableOpЂ+sequential_2/conv2d_2/Conv2D/ReadVariableOpЂ,sequential_2/conv2d_3/BiasAdd/ReadVariableOpЂ+sequential_2/conv2d_3/Conv2D/ReadVariableOpЂ,sequential_2/conv2d_4/BiasAdd/ReadVariableOpЂ+sequential_2/conv2d_4/Conv2D/ReadVariableOpЂ,sequential_2/conv2d_5/BiasAdd/ReadVariableOpЂ+sequential_2/conv2d_5/Conv2D/ReadVariableOpЂ)sequential_2/dense/BiasAdd/ReadVariableOpЂ(sequential_2/dense/MatMul/ReadVariableOpЂ+sequential_2/dense_1/BiasAdd/ReadVariableOpЂ*sequential_2/dense_1/MatMul/ReadVariableOp}
,sequential_2/sequential/resizing/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"      ч
6sequential_2/sequential/resizing/resize/ResizeBilinearResizeBilinearsequential_input5sequential_2/sequential/resizing/resize/size:output:0*
T0*1
_output_shapes
:џџџџџџџџџ*
half_pixel_centers(m
(sequential_2/sequential/rescaling/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *;o
*sequential_2/sequential/rescaling/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    ф
%sequential_2/sequential/rescaling/mulMulGsequential_2/sequential/resizing/resize/ResizeBilinear:resized_images:01sequential_2/sequential/rescaling/Cast/x:output:0*
T0*1
_output_shapes
:џџџџџџџџџЪ
%sequential_2/sequential/rescaling/addAddV2)sequential_2/sequential/rescaling/mul:z:03sequential_2/sequential/rescaling/Cast_1/x:output:0*
T0*1
_output_shapes
:џџџџџџџџџЄ
)sequential_2/conv2d/Conv2D/ReadVariableOpReadVariableOp2sequential_2_conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0ч
sequential_2/conv2d/Conv2DConv2D)sequential_2/sequential/rescaling/add:z:01sequential_2/conv2d/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџўў *
paddingVALID*
strides

*sequential_2/conv2d/BiasAdd/ReadVariableOpReadVariableOp3sequential_2_conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Л
sequential_2/conv2d/BiasAddBiasAdd#sequential_2/conv2d/Conv2D:output:02sequential_2/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџўў 
sequential_2/conv2d/ReluRelu$sequential_2/conv2d/BiasAdd:output:0*
T0*1
_output_shapes
:џџџџџџџџџўў Т
"sequential_2/max_pooling2d/MaxPoolMaxPool&sequential_2/conv2d/Relu:activations:0*/
_output_shapes
:џџџџџџџџџ *
ksize
*
paddingVALID*
strides
Ј
+sequential_2/conv2d_1/Conv2D/ReadVariableOpReadVariableOp4sequential_2_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0ы
sequential_2/conv2d_1/Conv2DConv2D+sequential_2/max_pooling2d/MaxPool:output:03sequential_2/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ}}@*
paddingVALID*
strides

,sequential_2/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp5sequential_2_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0П
sequential_2/conv2d_1/BiasAddBiasAdd%sequential_2/conv2d_1/Conv2D:output:04sequential_2/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ}}@
sequential_2/conv2d_1/ReluRelu&sequential_2/conv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ}}@Ц
$sequential_2/max_pooling2d_1/MaxPoolMaxPool(sequential_2/conv2d_1/Relu:activations:0*/
_output_shapes
:џџџџџџџџџ>>@*
ksize
*
paddingVALID*
strides
Ј
+sequential_2/conv2d_2/Conv2D/ReadVariableOpReadVariableOp4sequential_2_conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0э
sequential_2/conv2d_2/Conv2DConv2D-sequential_2/max_pooling2d_1/MaxPool:output:03sequential_2/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ<<@*
paddingVALID*
strides

,sequential_2/conv2d_2/BiasAdd/ReadVariableOpReadVariableOp5sequential_2_conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0П
sequential_2/conv2d_2/BiasAddBiasAdd%sequential_2/conv2d_2/Conv2D:output:04sequential_2/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ<<@
sequential_2/conv2d_2/ReluRelu&sequential_2/conv2d_2/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ<<@Ц
$sequential_2/max_pooling2d_2/MaxPoolMaxPool(sequential_2/conv2d_2/Relu:activations:0*/
_output_shapes
:џџџџџџџџџ@*
ksize
*
paddingVALID*
strides
Ј
+sequential_2/conv2d_3/Conv2D/ReadVariableOpReadVariableOp4sequential_2_conv2d_3_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0э
sequential_2/conv2d_3/Conv2DConv2D-sequential_2/max_pooling2d_2/MaxPool:output:03sequential_2/conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@*
paddingVALID*
strides

,sequential_2/conv2d_3/BiasAdd/ReadVariableOpReadVariableOp5sequential_2_conv2d_3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0П
sequential_2/conv2d_3/BiasAddBiasAdd%sequential_2/conv2d_3/Conv2D:output:04sequential_2/conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@
sequential_2/conv2d_3/ReluRelu&sequential_2/conv2d_3/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ@Ц
$sequential_2/max_pooling2d_3/MaxPoolMaxPool(sequential_2/conv2d_3/Relu:activations:0*/
_output_shapes
:џџџџџџџџџ@*
ksize
*
paddingVALID*
strides
Ј
+sequential_2/conv2d_4/Conv2D/ReadVariableOpReadVariableOp4sequential_2_conv2d_4_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0э
sequential_2/conv2d_4/Conv2DConv2D-sequential_2/max_pooling2d_3/MaxPool:output:03sequential_2/conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@*
paddingVALID*
strides

,sequential_2/conv2d_4/BiasAdd/ReadVariableOpReadVariableOp5sequential_2_conv2d_4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0П
sequential_2/conv2d_4/BiasAddBiasAdd%sequential_2/conv2d_4/Conv2D:output:04sequential_2/conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@
sequential_2/conv2d_4/ReluRelu&sequential_2/conv2d_4/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ@Ц
$sequential_2/max_pooling2d_4/MaxPoolMaxPool(sequential_2/conv2d_4/Relu:activations:0*/
_output_shapes
:џџџџџџџџџ@*
ksize
*
paddingVALID*
strides
Ј
+sequential_2/conv2d_5/Conv2D/ReadVariableOpReadVariableOp4sequential_2_conv2d_5_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0э
sequential_2/conv2d_5/Conv2DConv2D-sequential_2/max_pooling2d_4/MaxPool:output:03sequential_2/conv2d_5/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@*
paddingVALID*
strides

,sequential_2/conv2d_5/BiasAdd/ReadVariableOpReadVariableOp5sequential_2_conv2d_5_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0П
sequential_2/conv2d_5/BiasAddBiasAdd%sequential_2/conv2d_5/Conv2D:output:04sequential_2/conv2d_5/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@
sequential_2/conv2d_5/ReluRelu&sequential_2/conv2d_5/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ@Ц
$sequential_2/max_pooling2d_5/MaxPoolMaxPool(sequential_2/conv2d_5/Relu:activations:0*/
_output_shapes
:џџџџџџџџџ@*
ksize
*
paddingVALID*
strides
k
sequential_2/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Ў
sequential_2/flatten/ReshapeReshape-sequential_2/max_pooling2d_5/MaxPool:output:0#sequential_2/flatten/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ
(sequential_2/dense/MatMul/ReadVariableOpReadVariableOp1sequential_2_dense_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype0Ў
sequential_2/dense/MatMulMatMul%sequential_2/flatten/Reshape:output:00sequential_2/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@
)sequential_2/dense/BiasAdd/ReadVariableOpReadVariableOp2sequential_2_dense_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Џ
sequential_2/dense/BiasAddBiasAdd#sequential_2/dense/MatMul:product:01sequential_2/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@v
sequential_2/dense/ReluRelu#sequential_2/dense/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
*sequential_2/dense_1/MatMul/ReadVariableOpReadVariableOp3sequential_2_dense_1_matmul_readvariableop_resource*
_output_shapes

:@
*
dtype0В
sequential_2/dense_1/MatMulMatMul%sequential_2/dense/Relu:activations:02sequential_2/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ

+sequential_2/dense_1/BiasAdd/ReadVariableOpReadVariableOp4sequential_2_dense_1_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0Е
sequential_2/dense_1/BiasAddBiasAdd%sequential_2/dense_1/MatMul:product:03sequential_2/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ

sequential_2/dense_1/SoftmaxSoftmax%sequential_2/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
u
IdentityIdentity&sequential_2/dense_1/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
Ђ
NoOpNoOp+^sequential_2/conv2d/BiasAdd/ReadVariableOp*^sequential_2/conv2d/Conv2D/ReadVariableOp-^sequential_2/conv2d_1/BiasAdd/ReadVariableOp,^sequential_2/conv2d_1/Conv2D/ReadVariableOp-^sequential_2/conv2d_2/BiasAdd/ReadVariableOp,^sequential_2/conv2d_2/Conv2D/ReadVariableOp-^sequential_2/conv2d_3/BiasAdd/ReadVariableOp,^sequential_2/conv2d_3/Conv2D/ReadVariableOp-^sequential_2/conv2d_4/BiasAdd/ReadVariableOp,^sequential_2/conv2d_4/Conv2D/ReadVariableOp-^sequential_2/conv2d_5/BiasAdd/ReadVariableOp,^sequential_2/conv2d_5/Conv2D/ReadVariableOp*^sequential_2/dense/BiasAdd/ReadVariableOp)^sequential_2/dense/MatMul/ReadVariableOp,^sequential_2/dense_1/BiasAdd/ReadVariableOp+^sequential_2/dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:џџџџџџџџџ: : : : : : : : : : : : : : : : 2X
*sequential_2/conv2d/BiasAdd/ReadVariableOp*sequential_2/conv2d/BiasAdd/ReadVariableOp2V
)sequential_2/conv2d/Conv2D/ReadVariableOp)sequential_2/conv2d/Conv2D/ReadVariableOp2\
,sequential_2/conv2d_1/BiasAdd/ReadVariableOp,sequential_2/conv2d_1/BiasAdd/ReadVariableOp2Z
+sequential_2/conv2d_1/Conv2D/ReadVariableOp+sequential_2/conv2d_1/Conv2D/ReadVariableOp2\
,sequential_2/conv2d_2/BiasAdd/ReadVariableOp,sequential_2/conv2d_2/BiasAdd/ReadVariableOp2Z
+sequential_2/conv2d_2/Conv2D/ReadVariableOp+sequential_2/conv2d_2/Conv2D/ReadVariableOp2\
,sequential_2/conv2d_3/BiasAdd/ReadVariableOp,sequential_2/conv2d_3/BiasAdd/ReadVariableOp2Z
+sequential_2/conv2d_3/Conv2D/ReadVariableOp+sequential_2/conv2d_3/Conv2D/ReadVariableOp2\
,sequential_2/conv2d_4/BiasAdd/ReadVariableOp,sequential_2/conv2d_4/BiasAdd/ReadVariableOp2Z
+sequential_2/conv2d_4/Conv2D/ReadVariableOp+sequential_2/conv2d_4/Conv2D/ReadVariableOp2\
,sequential_2/conv2d_5/BiasAdd/ReadVariableOp,sequential_2/conv2d_5/BiasAdd/ReadVariableOp2Z
+sequential_2/conv2d_5/Conv2D/ReadVariableOp+sequential_2/conv2d_5/Conv2D/ReadVariableOp2V
)sequential_2/dense/BiasAdd/ReadVariableOp)sequential_2/dense/BiasAdd/ReadVariableOp2T
(sequential_2/dense/MatMul/ReadVariableOp(sequential_2/dense/MatMul/ReadVariableOp2Z
+sequential_2/dense_1/BiasAdd/ReadVariableOp+sequential_2/dense_1/BiasAdd/ReadVariableOp2X
*sequential_2/dense_1/MatMul/ReadVariableOp*sequential_2/dense_1/MatMul/ReadVariableOp:c _
1
_output_shapes
:џџџџџџџџџ
*
_user_specified_namesequential_input
Ћ
J
"__inference__update_step_xla_81720
gradient
variable:@*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:@: *
	_noinline(:D @

_output_shapes
:@
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
Й
K
/__inference_max_pooling2d_3_layer_call_fn_81968

inputs
identityл
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_80771
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
	
a
E__inference_sequential_layer_call_and_return_conditional_losses_81770

inputs
identitye
resizing/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"      ­
resizing/resize/ResizeBilinearResizeBilinearinputsresizing/resize/size:output:0*
T0*1
_output_shapes
:џџџџџџџџџ*
half_pixel_centers(U
rescaling/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *;W
rescaling/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    
rescaling/mulMul/resizing/resize/ResizeBilinear:resized_images:0rescaling/Cast/x:output:0*
T0*1
_output_shapes
:џџџџџџџџџ
rescaling/addAddV2rescaling/mul:z:0rescaling/Cast_1/x:output:0*
T0*1
_output_shapes
:џџџџџџџџџc
IdentityIdentityrescaling/add:z:0*
T0*1
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ:Y U
1
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
к
a
E__inference_sequential_layer_call_and_return_conditional_losses_80558

inputs
identityФ
resizing/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_resizing_layer_call_and_return_conditional_losses_80545с
rescaling/PartitionedCallPartitionedCall!resizing/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_rescaling_layer_call_and_return_conditional_losses_80555t
IdentityIdentity"rescaling/PartitionedCall:output:0*
T0*1
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ:Y U
1
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs

ќ
C__inference_conv2d_2_layer_call_and_return_conditional_losses_81933

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ<<@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ<<@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ<<@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ<<@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ>>@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ>>@
 
_user_specified_nameinputs

f
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_80759

inputs
identityЂ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Ф
^
B__inference_flatten_layer_call_and_return_conditional_losses_80921

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:џџџџџџџџџY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ@:W S
/
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs

f
J__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_81973

inputs
identityЂ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs

њ
A__inference_conv2d_layer_call_and_return_conditional_losses_80818

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџўў *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџўў Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:џџџџџџџџџўў k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:џџџџџџџџџўў w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs

d
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_81883

inputs
identityЂ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs

b
F__inference_random_flip_layer_call_and_return_conditional_losses_82122

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ:Y U
1
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
З
N
"__inference__update_step_xla_81745
gradient
variable:@
*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes
:@
: *
	_noinline(:H D

_output_shapes

:@

"
_user_specified_name
gradient:($
"
_user_specified_name
variable

b
F__inference_random_flip_layer_call_and_return_conditional_losses_80617

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ:Y U
1
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Ћ
J
"__inference__update_step_xla_81700
gradient
variable:@*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:@: *
	_noinline(:D @

_output_shapes
:@
"
_user_specified_name
gradient:($
"
_user_specified_name
variable

f
J__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_82003

inputs
identityЂ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs


ђ
@__inference_dense_layer_call_and_return_conditional_losses_82064

inputs1
matmul_readvariableop_resource:	@-
biasadd_readvariableop_resource:@
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs

г
,__inference_sequential_2_layer_call_fn_80993
sequential_input!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@#
	unknown_3:@@
	unknown_4:@#
	unknown_5:@@
	unknown_6:@#
	unknown_7:@@
	unknown_8:@#
	unknown_9:@@

unknown_10:@

unknown_11:	@

unknown_12:@

unknown_13:@


unknown_14:

identityЂStatefulPartitionedCallЄ
StatefulPartitionedCallStatefulPartitionedCallsequential_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ
*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_sequential_2_layer_call_and_return_conditional_losses_80958o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:џџџџџџџџџ: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:c _
1
_output_shapes
:џџџџџџџџџ
*
_user_specified_namesequential_input
я

&__inference_conv2d_layer_call_fn_81862

inputs!
unknown: 
	unknown_0: 
identityЂStatefulPartitionedCallу
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџўў *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_80818y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:џџџџџџџџџўў `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:џџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
і

map_while_cond_80646$
 map_while_map_while_loop_counter
map_while_map_strided_slice
map_while_placeholder
map_while_placeholder_1$
 map_while_less_map_strided_slice;
7map_while_map_while_cond_80646___redundant_placeholder0
map_while_identity
p
map/while/LessLessmap_while_placeholder map_while_less_map_strided_slice*
T0*
_output_shapes
: x
map/while/Less_1Less map_while_map_while_loop_countermap_while_map_strided_slice*
T0*
_output_shapes
: d
map/while/LogicalAnd
LogicalAndmap/while/Less_1:z:0map/while/Less:z:0*
_output_shapes
: Y
map/while/IdentityIdentitymap/while/LogicalAnd:z:0*
T0
*
_output_shapes
: "1
map_while_identitymap/while/Identity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
: : : : : :: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
:

f
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_81913

inputs
identityЂ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
сg
 
__inference__traced_save_82374
file_prefix,
(savev2_conv2d_kernel_read_readvariableop*
&savev2_conv2d_bias_read_readvariableop.
*savev2_conv2d_1_kernel_read_readvariableop,
(savev2_conv2d_1_bias_read_readvariableop.
*savev2_conv2d_2_kernel_read_readvariableop,
(savev2_conv2d_2_bias_read_readvariableop.
*savev2_conv2d_3_kernel_read_readvariableop,
(savev2_conv2d_3_bias_read_readvariableop.
*savev2_conv2d_4_kernel_read_readvariableop,
(savev2_conv2d_4_bias_read_readvariableop.
*savev2_conv2d_5_kernel_read_readvariableop,
(savev2_conv2d_5_bias_read_readvariableop+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop-
)savev2_dense_1_kernel_read_readvariableop+
'savev2_dense_1_bias_read_readvariableop(
$savev2_iteration_read_readvariableop	,
(savev2_learning_rate_read_readvariableop3
/savev2_adam_m_conv2d_kernel_read_readvariableop3
/savev2_adam_v_conv2d_kernel_read_readvariableop1
-savev2_adam_m_conv2d_bias_read_readvariableop1
-savev2_adam_v_conv2d_bias_read_readvariableop5
1savev2_adam_m_conv2d_1_kernel_read_readvariableop5
1savev2_adam_v_conv2d_1_kernel_read_readvariableop3
/savev2_adam_m_conv2d_1_bias_read_readvariableop3
/savev2_adam_v_conv2d_1_bias_read_readvariableop5
1savev2_adam_m_conv2d_2_kernel_read_readvariableop5
1savev2_adam_v_conv2d_2_kernel_read_readvariableop3
/savev2_adam_m_conv2d_2_bias_read_readvariableop3
/savev2_adam_v_conv2d_2_bias_read_readvariableop5
1savev2_adam_m_conv2d_3_kernel_read_readvariableop5
1savev2_adam_v_conv2d_3_kernel_read_readvariableop3
/savev2_adam_m_conv2d_3_bias_read_readvariableop3
/savev2_adam_v_conv2d_3_bias_read_readvariableop5
1savev2_adam_m_conv2d_4_kernel_read_readvariableop5
1savev2_adam_v_conv2d_4_kernel_read_readvariableop3
/savev2_adam_m_conv2d_4_bias_read_readvariableop3
/savev2_adam_v_conv2d_4_bias_read_readvariableop5
1savev2_adam_m_conv2d_5_kernel_read_readvariableop5
1savev2_adam_v_conv2d_5_kernel_read_readvariableop3
/savev2_adam_m_conv2d_5_bias_read_readvariableop3
/savev2_adam_v_conv2d_5_bias_read_readvariableop2
.savev2_adam_m_dense_kernel_read_readvariableop2
.savev2_adam_v_dense_kernel_read_readvariableop0
,savev2_adam_m_dense_bias_read_readvariableop0
,savev2_adam_v_dense_bias_read_readvariableop4
0savev2_adam_m_dense_1_kernel_read_readvariableop4
0savev2_adam_v_dense_1_kernel_read_readvariableop2
.savev2_adam_m_dense_1_bias_read_readvariableop2
.savev2_adam_v_dense_1_bias_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop3
/savev2_random_flip_statevar_read_readvariableop	
savev2_const

identity_1ЂMergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:8*
dtype0*­
valueЃB 8B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/29/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/30/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/31/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/32/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer-1/layer-0/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHо
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:8*
dtype0*
valuezBx8B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ш
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0(savev2_conv2d_kernel_read_readvariableop&savev2_conv2d_bias_read_readvariableop*savev2_conv2d_1_kernel_read_readvariableop(savev2_conv2d_1_bias_read_readvariableop*savev2_conv2d_2_kernel_read_readvariableop(savev2_conv2d_2_bias_read_readvariableop*savev2_conv2d_3_kernel_read_readvariableop(savev2_conv2d_3_bias_read_readvariableop*savev2_conv2d_4_kernel_read_readvariableop(savev2_conv2d_4_bias_read_readvariableop*savev2_conv2d_5_kernel_read_readvariableop(savev2_conv2d_5_bias_read_readvariableop'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop)savev2_dense_1_kernel_read_readvariableop'savev2_dense_1_bias_read_readvariableop$savev2_iteration_read_readvariableop(savev2_learning_rate_read_readvariableop/savev2_adam_m_conv2d_kernel_read_readvariableop/savev2_adam_v_conv2d_kernel_read_readvariableop-savev2_adam_m_conv2d_bias_read_readvariableop-savev2_adam_v_conv2d_bias_read_readvariableop1savev2_adam_m_conv2d_1_kernel_read_readvariableop1savev2_adam_v_conv2d_1_kernel_read_readvariableop/savev2_adam_m_conv2d_1_bias_read_readvariableop/savev2_adam_v_conv2d_1_bias_read_readvariableop1savev2_adam_m_conv2d_2_kernel_read_readvariableop1savev2_adam_v_conv2d_2_kernel_read_readvariableop/savev2_adam_m_conv2d_2_bias_read_readvariableop/savev2_adam_v_conv2d_2_bias_read_readvariableop1savev2_adam_m_conv2d_3_kernel_read_readvariableop1savev2_adam_v_conv2d_3_kernel_read_readvariableop/savev2_adam_m_conv2d_3_bias_read_readvariableop/savev2_adam_v_conv2d_3_bias_read_readvariableop1savev2_adam_m_conv2d_4_kernel_read_readvariableop1savev2_adam_v_conv2d_4_kernel_read_readvariableop/savev2_adam_m_conv2d_4_bias_read_readvariableop/savev2_adam_v_conv2d_4_bias_read_readvariableop1savev2_adam_m_conv2d_5_kernel_read_readvariableop1savev2_adam_v_conv2d_5_kernel_read_readvariableop/savev2_adam_m_conv2d_5_bias_read_readvariableop/savev2_adam_v_conv2d_5_bias_read_readvariableop.savev2_adam_m_dense_kernel_read_readvariableop.savev2_adam_v_dense_kernel_read_readvariableop,savev2_adam_m_dense_bias_read_readvariableop,savev2_adam_v_dense_bias_read_readvariableop0savev2_adam_m_dense_1_kernel_read_readvariableop0savev2_adam_v_dense_1_kernel_read_readvariableop.savev2_adam_m_dense_1_bias_read_readvariableop.savev2_adam_v_dense_1_bias_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop/savev2_random_flip_statevar_read_readvariableopsavev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *F
dtypes<
:28		
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:Г
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*О
_input_shapesЌ
Љ: : : : @:@:@@:@:@@:@:@@:@:@@:@:	@:@:@
:
: : : : : : : @: @:@:@:@@:@@:@:@:@@:@@:@:@:@@:@@:@:@:@@:@@:@:@:	@:	@:@:@:@
:@
:
:
: : : : :: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@:,	(
&
_output_shapes
:@@: 


_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@:%!

_output_shapes
:	@: 

_output_shapes
:@:$ 

_output_shapes

:@
: 

_output_shapes
:
:

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
: :,(
&
_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @:,(
&
_output_shapes
: @: 

_output_shapes
:@: 

_output_shapes
:@:,(
&
_output_shapes
:@@:,(
&
_output_shapes
:@@: 

_output_shapes
:@: 

_output_shapes
:@:,(
&
_output_shapes
:@@:, (
&
_output_shapes
:@@: !

_output_shapes
:@: "

_output_shapes
:@:,#(
&
_output_shapes
:@@:,$(
&
_output_shapes
:@@: %

_output_shapes
:@: &

_output_shapes
:@:,'(
&
_output_shapes
:@@:,((
&
_output_shapes
:@@: )

_output_shapes
:@: *

_output_shapes
:@:%+!

_output_shapes
:	@:%,!

_output_shapes
:	@: -

_output_shapes
:@: .

_output_shapes
:@:$/ 

_output_shapes

:@
:$0 

_output_shapes

:@
: 1

_output_shapes
:
: 2

_output_shapes
:
:3

_output_shapes
: :4

_output_shapes
: :5

_output_shapes
: :6

_output_shapes
: : 7

_output_shapes
::8

_output_shapes
: 
ы

(__inference_conv2d_3_layer_call_fn_81952

inputs!
unknown:@@
	unknown_0:@
identityЂStatefulPartitionedCallу
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_3_layer_call_and_return_conditional_losses_80872w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
Й
K
/__inference_max_pooling2d_5_layer_call_fn_82028

inputs
identityл
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_80795
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Ў
C
'__inference_flatten_layer_call_fn_82038

inputs
identityБ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_80921a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ@:W S
/
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
Ц

map_while_body_80647$
 map_while_map_while_loop_counter
map_while_map_strided_slice
map_while_placeholder
map_while_placeholder_1#
map_while_map_strided_slice_1_0_
[map_while_tensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensor_0
map_while_identity
map_while_identity_1
map_while_identity_2
map_while_identity_3!
map_while_map_strided_slice_1]
Ymap_while_tensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensor
;map/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"         З
-map/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem[map_while_tensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensor_0map_while_placeholderDmap/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*$
_output_shapes
:*
element_dtype0п
,map/while/flip_left_right/control_dependencyIdentity4map/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*@
_class6
42loc:@map/while/TensorArrayV2Read/TensorListGetItem*$
_output_shapes
:r
(map/while/flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:Щ
#map/while/flip_left_right/ReverseV2	ReverseV25map/while/flip_left_right/control_dependency:output:01map/while/flip_left_right/ReverseV2/axis:output:0*
T0*$
_output_shapes
:Ъ
)map/while/flip_up_down/control_dependencyIdentity,map/while/flip_left_right/ReverseV2:output:0*
T0*6
_class,
*(loc:@map/while/flip_left_right/ReverseV2*$
_output_shapes
:o
%map/while/flip_up_down/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: Р
 map/while/flip_up_down/ReverseV2	ReverseV22map/while/flip_up_down/control_dependency:output:0.map/while/flip_up_down/ReverseV2/axis:output:0*
T0*$
_output_shapes
:о
.map/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemmap_while_placeholder_1map_while_placeholder)map/while/flip_up_down/ReverseV2:output:0*
_output_shapes
: *
element_dtype0:щшвQ
map/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :h
map/while/addAddV2map_while_placeholdermap/while/add/y:output:0*
T0*
_output_shapes
: S
map/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :w
map/while/add_1AddV2 map_while_map_while_loop_countermap/while/add_1/y:output:0*
T0*
_output_shapes
: T
map/while/IdentityIdentitymap/while/add_1:z:0*
T0*
_output_shapes
: ^
map/while/Identity_1Identitymap_while_map_strided_slice*
T0*
_output_shapes
: T
map/while/Identity_2Identitymap/while/add:z:0*
T0*
_output_shapes
: 
map/while/Identity_3Identity>map/while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: "1
map_while_identitymap/while/Identity:output:0"5
map_while_identity_1map/while/Identity_1:output:0"5
map_while_identity_2map/while/Identity_2:output:0"5
map_while_identity_3map/while/Identity_3:output:0"@
map_while_map_strided_slice_1map_while_map_strided_slice_1_0"И
Ymap_while_tensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensor[map_while_tensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*
_input_shapes
: : : : : : : 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 

f
J__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_80783

inputs
identityЂ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs

c
G__inference_sequential_1_layer_call_and_return_conditional_losses_80620

inputs
identityЪ
random_flip/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_random_flip_layer_call_and_return_conditional_losses_80617v
IdentityIdentity$random_flip/PartitionedCall:output:0*
T0*1
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ:Y U
1
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Е
I
-__inference_max_pooling2d_layer_call_fn_81878

inputs
identityй
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_80735
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
D

G__inference_sequential_2_layer_call_and_return_conditional_losses_81171

inputs&
conv2d_81123: 
conv2d_81125: (
conv2d_1_81129: @
conv2d_1_81131:@(
conv2d_2_81135:@@
conv2d_2_81137:@(
conv2d_3_81141:@@
conv2d_3_81143:@(
conv2d_4_81147:@@
conv2d_4_81149:@(
conv2d_5_81153:@@
conv2d_5_81155:@
dense_81160:	@
dense_81162:@
dense_1_81165:@

dense_1_81167:

identityЂconv2d/StatefulPartitionedCallЂ conv2d_1/StatefulPartitionedCallЂ conv2d_2/StatefulPartitionedCallЂ conv2d_3/StatefulPartitionedCallЂ conv2d_4/StatefulPartitionedCallЂ conv2d_5/StatefulPartitionedCallЂdense/StatefulPartitionedCallЂdense_1/StatefulPartitionedCallШ
sequential/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_80586щ
sequential_1/PartitionedCallPartitionedCall#sequential/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_80708
conv2d/StatefulPartitionedCallStatefulPartitionedCall%sequential_1/PartitionedCall:output:0conv2d_81123conv2d_81125*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџўў *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_80818э
max_pooling2d/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_80735
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0conv2d_1_81129conv2d_1_81131*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ}}@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_80836ѓ
max_pooling2d_1/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ>>@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_80747
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0conv2d_2_81135conv2d_2_81137*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ<<@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_2_layer_call_and_return_conditional_losses_80854ѓ
max_pooling2d_2/PartitionedCallPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_80759
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_2/PartitionedCall:output:0conv2d_3_81141conv2d_3_81143*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_3_layer_call_and_return_conditional_losses_80872ѓ
max_pooling2d_3/PartitionedCallPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_80771
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_3/PartitionedCall:output:0conv2d_4_81147conv2d_4_81149*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_4_layer_call_and_return_conditional_losses_80890ѓ
max_pooling2d_4/PartitionedCallPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_80783
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_4/PartitionedCall:output:0conv2d_5_81153conv2d_5_81155*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_5_layer_call_and_return_conditional_losses_80908ѓ
max_pooling2d_5/PartitionedCallPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_80795л
flatten/PartitionedCallPartitionedCall(max_pooling2d_5/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_80921ў
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_81160dense_81162*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_80934
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_81165dense_1_81167*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_80951w
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
и
NoOpNoOp^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall!^conv2d_5/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:џџџџџџџџџ: : : : : : : : : : : : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:Y U
1
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
ю
b
F__inference_random_flip_layer_call_and_return_conditional_losses_80693

inputs
identity?
	map/ShapeShapeinputs*
T0*
_output_shapes
:a
map/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: c
map/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:c
map/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:х
map/strided_sliceStridedSlicemap/Shape:output:0 map/strided_slice/stack:output:0"map/strided_slice/stack_1:output:0"map/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskj
map/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџО
map/TensorArrayV2TensorListReserve(map/TensorArrayV2/element_shape:output:0map/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
9map/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"         с
+map/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorinputsBmap/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвK
	map/ConstConst*
_output_shapes
: *
dtype0*
value	B : l
!map/TensorArrayV2_1/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџТ
map/TensorArrayV2_1TensorListReserve*map/TensorArrayV2_1/element_shape:output:0map/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвX
map/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ј
	map/whileStatelessWhilemap/while/loop_counter:output:0map/strided_slice:output:0map/Const:output:0map/TensorArrayV2_1:handle:0map/strided_slice:output:0;map/TensorArrayUnstack/TensorListFromTensor:output_handle:0*
T

2*
_lower_using_switch_merge(*
_num_original_outputs* 
_output_shapes
: : : : : : * 
_read_only_resource_inputs
 *
_stateful_parallelism( * 
bodyR
map_while_body_80647* 
condR
map_while_cond_80646*
output_shapes
: : : : : : 
4map/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"         д
&map/TensorArrayV2Stack/TensorListStackTensorListStackmap/while:output:3=map/TensorArrayV2Stack/TensorListStack/element_shape:output:0*1
_output_shapes
:џџџџџџџџџ*
element_dtype0
IdentityIdentity/map/TensorArrayV2Stack/TensorListStack:tensor:0*
T0*1
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ:Y U
1
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs


ѓ
B__inference_dense_1_layer_call_and_return_conditional_losses_80951

inputs0
matmul_readvariableop_resource:@
-
biasadd_readvariableop_resource:

identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs

ќ
C__inference_conv2d_4_layer_call_and_return_conditional_losses_80890

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
Ц
D
(__inference_resizing_layer_call_fn_82089

inputs
identityЛ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_resizing_layer_call_and_return_conditional_losses_80545j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ:Y U
1
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs

ќ
C__inference_conv2d_1_layer_call_and_return_conditional_losses_81903

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ}}@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ}}@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ}}@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ}}@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs

ќ
C__inference_conv2d_1_layer_call_and_return_conditional_losses_80836

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ}}@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ}}@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ}}@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ}}@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs


ђ
@__inference_dense_layer_call_and_return_conditional_losses_80934

inputs1
matmul_readvariableop_resource:	@-
biasadd_readvariableop_resource:@
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs

f
J__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_80795

inputs
identityЂ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs

њ
A__inference_conv2d_layer_call_and_return_conditional_losses_81873

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџўў *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџўў Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:џџџџџџџџџўў k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:џџџџџџџџџўў w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
 
ч
 random_flip_map_while_body_81810<
8random_flip_map_while_random_flip_map_while_loop_counter7
3random_flip_map_while_random_flip_map_strided_slice%
!random_flip_map_while_placeholder'
#random_flip_map_while_placeholder_1;
7random_flip_map_while_random_flip_map_strided_slice_1_0w
srandom_flip_map_while_tensorarrayv2read_tensorlistgetitem_random_flip_map_tensorarrayunstack_tensorlistfromtensor_0"
random_flip_map_while_identity$
 random_flip_map_while_identity_1$
 random_flip_map_while_identity_2$
 random_flip_map_while_identity_39
5random_flip_map_while_random_flip_map_strided_slice_1u
qrandom_flip_map_while_tensorarrayv2read_tensorlistgetitem_random_flip_map_tensorarrayunstack_tensorlistfromtensor
Grandom_flip/map/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"         ѓ
9random_flip/map/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsrandom_flip_map_while_tensorarrayv2read_tensorlistgetitem_random_flip_map_tensorarrayunstack_tensorlistfromtensor_0!random_flip_map_while_placeholderPrandom_flip/map/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*$
_output_shapes
:*
element_dtype0
5random_flip/map/while/flip_up_down/control_dependencyIdentity@random_flip/map/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*L
_classB
@>loc:@random_flip/map/while/TensorArrayV2Read/TensorListGetItem*$
_output_shapes
:{
1random_flip/map/while/flip_up_down/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: ф
,random_flip/map/while/flip_up_down/ReverseV2	ReverseV2>random_flip/map/while/flip_up_down/control_dependency:output:0:random_flip/map/while/flip_up_down/ReverseV2/axis:output:0*
T0*$
_output_shapes
:
:random_flip/map/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem#random_flip_map_while_placeholder_1!random_flip_map_while_placeholder5random_flip/map/while/flip_up_down/ReverseV2:output:0*
_output_shapes
: *
element_dtype0:щшв]
random_flip/map/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
random_flip/map/while/addAddV2!random_flip_map_while_placeholder$random_flip/map/while/add/y:output:0*
T0*
_output_shapes
: _
random_flip/map/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Ї
random_flip/map/while/add_1AddV28random_flip_map_while_random_flip_map_while_loop_counter&random_flip/map/while/add_1/y:output:0*
T0*
_output_shapes
: l
random_flip/map/while/IdentityIdentityrandom_flip/map/while/add_1:z:0*
T0*
_output_shapes
: 
 random_flip/map/while/Identity_1Identity3random_flip_map_while_random_flip_map_strided_slice*
T0*
_output_shapes
: l
 random_flip/map/while/Identity_2Identityrandom_flip/map/while/add:z:0*
T0*
_output_shapes
: 
 random_flip/map/while/Identity_3IdentityJrandom_flip/map/while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: "I
random_flip_map_while_identity'random_flip/map/while/Identity:output:0"M
 random_flip_map_while_identity_1)random_flip/map/while/Identity_1:output:0"M
 random_flip_map_while_identity_2)random_flip/map/while/Identity_2:output:0"M
 random_flip_map_while_identity_3)random_flip/map/while/Identity_3:output:0"p
5random_flip_map_while_random_flip_map_strided_slice_17random_flip_map_while_random_flip_map_strided_slice_1_0"ш
qrandom_flip_map_while_tensorarrayv2read_tensorlistgetitem_random_flip_map_tensorarrayunstack_tensorlistfromtensorsrandom_flip_map_while_tensorarrayv2read_tensorlistgetitem_random_flip_map_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*
_input_shapes
: : : : : : : 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
Ж
М
-sequential_1_random_flip_map_while_cond_81559V
Rsequential_1_random_flip_map_while_sequential_1_random_flip_map_while_loop_counterQ
Msequential_1_random_flip_map_while_sequential_1_random_flip_map_strided_slice2
.sequential_1_random_flip_map_while_placeholder4
0sequential_1_random_flip_map_while_placeholder_1V
Rsequential_1_random_flip_map_while_less_sequential_1_random_flip_map_strided_slicem
isequential_1_random_flip_map_while_sequential_1_random_flip_map_while_cond_81559___redundant_placeholder0/
+sequential_1_random_flip_map_while_identity
д
'sequential_1/random_flip/map/while/LessLess.sequential_1_random_flip_map_while_placeholderRsequential_1_random_flip_map_while_less_sequential_1_random_flip_map_strided_slice*
T0*
_output_shapes
: ѕ
)sequential_1/random_flip/map/while/Less_1LessRsequential_1_random_flip_map_while_sequential_1_random_flip_map_while_loop_counterMsequential_1_random_flip_map_while_sequential_1_random_flip_map_strided_slice*
T0*
_output_shapes
: Џ
-sequential_1/random_flip/map/while/LogicalAnd
LogicalAnd-sequential_1/random_flip/map/while/Less_1:z:0+sequential_1/random_flip/map/while/Less:z:0*
_output_shapes
: 
+sequential_1/random_flip/map/while/IdentityIdentity1sequential_1/random_flip/map/while/LogicalAnd:z:0*
T0
*
_output_shapes
: "c
+sequential_1_random_flip_map_while_identity4sequential_1/random_flip/map/while/Identity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
: : : : : :: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
:
ђ
i
E__inference_sequential_layer_call_and_return_conditional_losses_80606
resizing_input
identityЬ
resizing/PartitionedCallPartitionedCallresizing_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_resizing_layer_call_and_return_conditional_losses_80545с
rescaling/PartitionedCallPartitionedCall!resizing/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_rescaling_layer_call_and_return_conditional_losses_80555t
IdentityIdentity"rescaling/PartitionedCall:output:0*
T0*1
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ:a ]
1
_output_shapes
:џџџџџџџџџ
(
_user_specified_nameresizing_input
т
N
*__inference_sequential_layer_call_fn_80594
resizing_input
identityХ
PartitionedCallPartitionedCallresizing_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_80586j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ:a ]
1
_output_shapes
:џџџџџџџџџ
(
_user_specified_nameresizing_input
і

map_while_cond_82137$
 map_while_map_while_loop_counter
map_while_map_strided_slice
map_while_placeholder
map_while_placeholder_1$
 map_while_less_map_strided_slice;
7map_while_map_while_cond_82137___redundant_placeholder0
map_while_identity
p
map/while/LessLessmap_while_placeholder map_while_less_map_strided_slice*
T0*
_output_shapes
: x
map/while/Less_1Less map_while_map_while_loop_countermap_while_map_strided_slice*
T0*
_output_shapes
: d
map/while/LogicalAnd
LogicalAndmap/while/Less_1:z:0map/while/Less:z:0*
_output_shapes
: Y
map/while/IdentityIdentitymap/while/LogicalAnd:z:0*
T0
*
_output_shapes
: "1
map_while_identitymap/while/Identity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
: : : : : :: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
:
Ъ
F
*__inference_sequential_layer_call_fn_81755

inputs
identityН
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_80558j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ:Y U
1
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
т
N
*__inference_sequential_layer_call_fn_80561
resizing_input
identityХ
PartitionedCallPartitionedCallresizing_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_80558j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ:a ]
1
_output_shapes
:џџџџџџџџџ
(
_user_specified_nameresizing_input
Й
K
/__inference_max_pooling2d_1_layer_call_fn_81908

inputs
identityл
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_80747
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
ЧY
Џ
G__inference_sequential_2_layer_call_and_return_conditional_losses_81538

inputs?
%conv2d_conv2d_readvariableop_resource: 4
&conv2d_biasadd_readvariableop_resource: A
'conv2d_1_conv2d_readvariableop_resource: @6
(conv2d_1_biasadd_readvariableop_resource:@A
'conv2d_2_conv2d_readvariableop_resource:@@6
(conv2d_2_biasadd_readvariableop_resource:@A
'conv2d_3_conv2d_readvariableop_resource:@@6
(conv2d_3_biasadd_readvariableop_resource:@A
'conv2d_4_conv2d_readvariableop_resource:@@6
(conv2d_4_biasadd_readvariableop_resource:@A
'conv2d_5_conv2d_readvariableop_resource:@@6
(conv2d_5_biasadd_readvariableop_resource:@7
$dense_matmul_readvariableop_resource:	@3
%dense_biasadd_readvariableop_resource:@8
&dense_1_matmul_readvariableop_resource:@
5
'dense_1_biasadd_readvariableop_resource:

identityЂconv2d/BiasAdd/ReadVariableOpЂconv2d/Conv2D/ReadVariableOpЂconv2d_1/BiasAdd/ReadVariableOpЂconv2d_1/Conv2D/ReadVariableOpЂconv2d_2/BiasAdd/ReadVariableOpЂconv2d_2/Conv2D/ReadVariableOpЂconv2d_3/BiasAdd/ReadVariableOpЂconv2d_3/Conv2D/ReadVariableOpЂconv2d_4/BiasAdd/ReadVariableOpЂconv2d_4/Conv2D/ReadVariableOpЂconv2d_5/BiasAdd/ReadVariableOpЂconv2d_5/Conv2D/ReadVariableOpЂdense/BiasAdd/ReadVariableOpЂdense/MatMul/ReadVariableOpЂdense_1/BiasAdd/ReadVariableOpЂdense_1/MatMul/ReadVariableOpp
sequential/resizing/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"      У
)sequential/resizing/resize/ResizeBilinearResizeBilinearinputs(sequential/resizing/resize/size:output:0*
T0*1
_output_shapes
:џџџџџџџџџ*
half_pixel_centers(`
sequential/rescaling/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *;b
sequential/rescaling/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    Н
sequential/rescaling/mulMul:sequential/resizing/resize/ResizeBilinear:resized_images:0$sequential/rescaling/Cast/x:output:0*
T0*1
_output_shapes
:џџџџџџџџџЃ
sequential/rescaling/addAddV2sequential/rescaling/mul:z:0&sequential/rescaling/Cast_1/x:output:0*
T0*1
_output_shapes
:џџџџџџџџџ
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Р
conv2d/Conv2DConv2Dsequential/rescaling/add:z:0$conv2d/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџўў *
paddingVALID*
strides

conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџўў h
conv2d/ReluReluconv2d/BiasAdd:output:0*
T0*1
_output_shapes
:џџџџџџџџџўў Ј
max_pooling2d/MaxPoolMaxPoolconv2d/Relu:activations:0*/
_output_shapes
:џџџџџџџџџ *
ksize
*
paddingVALID*
strides

conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0Ф
conv2d_1/Conv2DConv2Dmax_pooling2d/MaxPool:output:0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ}}@*
paddingVALID*
strides

conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ}}@j
conv2d_1/ReluReluconv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ}}@Ќ
max_pooling2d_1/MaxPoolMaxPoolconv2d_1/Relu:activations:0*/
_output_shapes
:џџџџџџџџџ>>@*
ksize
*
paddingVALID*
strides

conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Ц
conv2d_2/Conv2DConv2D max_pooling2d_1/MaxPool:output:0&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ<<@*
paddingVALID*
strides

conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ<<@j
conv2d_2/ReluReluconv2d_2/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ<<@Ќ
max_pooling2d_2/MaxPoolMaxPoolconv2d_2/Relu:activations:0*/
_output_shapes
:џџџџџџџџџ@*
ksize
*
paddingVALID*
strides

conv2d_3/Conv2D/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Ц
conv2d_3/Conv2DConv2D max_pooling2d_2/MaxPool:output:0&conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@*
paddingVALID*
strides

conv2d_3/BiasAdd/ReadVariableOpReadVariableOp(conv2d_3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
conv2d_3/BiasAddBiasAddconv2d_3/Conv2D:output:0'conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@j
conv2d_3/ReluReluconv2d_3/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ@Ќ
max_pooling2d_3/MaxPoolMaxPoolconv2d_3/Relu:activations:0*/
_output_shapes
:џџџџџџџџџ@*
ksize
*
paddingVALID*
strides

conv2d_4/Conv2D/ReadVariableOpReadVariableOp'conv2d_4_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Ц
conv2d_4/Conv2DConv2D max_pooling2d_3/MaxPool:output:0&conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@*
paddingVALID*
strides

conv2d_4/BiasAdd/ReadVariableOpReadVariableOp(conv2d_4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
conv2d_4/BiasAddBiasAddconv2d_4/Conv2D:output:0'conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@j
conv2d_4/ReluReluconv2d_4/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ@Ќ
max_pooling2d_4/MaxPoolMaxPoolconv2d_4/Relu:activations:0*/
_output_shapes
:џџџџџџџџџ@*
ksize
*
paddingVALID*
strides

conv2d_5/Conv2D/ReadVariableOpReadVariableOp'conv2d_5_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Ц
conv2d_5/Conv2DConv2D max_pooling2d_4/MaxPool:output:0&conv2d_5/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@*
paddingVALID*
strides

conv2d_5/BiasAdd/ReadVariableOpReadVariableOp(conv2d_5_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
conv2d_5/BiasAddBiasAddconv2d_5/Conv2D:output:0'conv2d_5/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@j
conv2d_5/ReluReluconv2d_5/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ@Ќ
max_pooling2d_5/MaxPoolMaxPoolconv2d_5/Relu:activations:0*/
_output_shapes
:џџџџџџџџџ@*
ksize
*
paddingVALID*
strides
^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   
flatten/ReshapeReshape max_pooling2d_5/MaxPool:output:0flatten/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype0
dense/MatMulMatMulflatten/Reshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@\

dense/ReluReludense/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes

:@
*
dtype0
dense_1/MatMulMatMuldense/Relu:activations:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ

dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
f
dense_1/SoftmaxSoftmaxdense_1/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
h
IdentityIdentitydense_1/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
в
NoOpNoOp^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp ^conv2d_3/BiasAdd/ReadVariableOp^conv2d_3/Conv2D/ReadVariableOp ^conv2d_4/BiasAdd/ReadVariableOp^conv2d_4/Conv2D/ReadVariableOp ^conv2d_5/BiasAdd/ReadVariableOp^conv2d_5/Conv2D/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:џџџџџџџџџ: : : : : : : : : : : : : : : : 2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp2B
conv2d_3/BiasAdd/ReadVariableOpconv2d_3/BiasAdd/ReadVariableOp2@
conv2d_3/Conv2D/ReadVariableOpconv2d_3/Conv2D/ReadVariableOp2B
conv2d_4/BiasAdd/ReadVariableOpconv2d_4/BiasAdd/ReadVariableOp2@
conv2d_4/Conv2D/ReadVariableOpconv2d_4/Conv2D/ReadVariableOp2B
conv2d_5/BiasAdd/ReadVariableOpconv2d_5/BiasAdd/ReadVariableOp2@
conv2d_5/Conv2D/ReadVariableOpconv2d_5/Conv2D/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:Y U
1
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Ћ
J
"__inference__update_step_xla_81710
gradient
variable:@*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:@: *
	_noinline(:D @

_output_shapes
:@
"
_user_specified_name
gradient:($
"
_user_specified_name
variable

ќ
C__inference_conv2d_3_layer_call_and_return_conditional_losses_80872

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
Мu
Џ
G__inference_sequential_2_layer_call_and_return_conditional_losses_81670

inputs?
%conv2d_conv2d_readvariableop_resource: 4
&conv2d_biasadd_readvariableop_resource: A
'conv2d_1_conv2d_readvariableop_resource: @6
(conv2d_1_biasadd_readvariableop_resource:@A
'conv2d_2_conv2d_readvariableop_resource:@@6
(conv2d_2_biasadd_readvariableop_resource:@A
'conv2d_3_conv2d_readvariableop_resource:@@6
(conv2d_3_biasadd_readvariableop_resource:@A
'conv2d_4_conv2d_readvariableop_resource:@@6
(conv2d_4_biasadd_readvariableop_resource:@A
'conv2d_5_conv2d_readvariableop_resource:@@6
(conv2d_5_biasadd_readvariableop_resource:@7
$dense_matmul_readvariableop_resource:	@3
%dense_biasadd_readvariableop_resource:@8
&dense_1_matmul_readvariableop_resource:@
5
'dense_1_biasadd_readvariableop_resource:

identityЂconv2d/BiasAdd/ReadVariableOpЂconv2d/Conv2D/ReadVariableOpЂconv2d_1/BiasAdd/ReadVariableOpЂconv2d_1/Conv2D/ReadVariableOpЂconv2d_2/BiasAdd/ReadVariableOpЂconv2d_2/Conv2D/ReadVariableOpЂconv2d_3/BiasAdd/ReadVariableOpЂconv2d_3/Conv2D/ReadVariableOpЂconv2d_4/BiasAdd/ReadVariableOpЂconv2d_4/Conv2D/ReadVariableOpЂconv2d_5/BiasAdd/ReadVariableOpЂconv2d_5/Conv2D/ReadVariableOpЂdense/BiasAdd/ReadVariableOpЂdense/MatMul/ReadVariableOpЂdense_1/BiasAdd/ReadVariableOpЂdense_1/MatMul/ReadVariableOpp
sequential/resizing/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"      У
)sequential/resizing/resize/ResizeBilinearResizeBilinearinputs(sequential/resizing/resize/size:output:0*
T0*1
_output_shapes
:џџџџџџџџџ*
half_pixel_centers(`
sequential/rescaling/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *;b
sequential/rescaling/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    Н
sequential/rescaling/mulMul:sequential/resizing/resize/ResizeBilinear:resized_images:0$sequential/rescaling/Cast/x:output:0*
T0*1
_output_shapes
:џџџџџџџџџЃ
sequential/rescaling/addAddV2sequential/rescaling/mul:z:0&sequential/rescaling/Cast_1/x:output:0*
T0*1
_output_shapes
:џџџџџџџџџn
"sequential_1/random_flip/map/ShapeShapesequential/rescaling/add:z:0*
T0*
_output_shapes
:z
0sequential_1/random_flip/map/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2sequential_1/random_flip/map/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2sequential_1/random_flip/map/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:т
*sequential_1/random_flip/map/strided_sliceStridedSlice+sequential_1/random_flip/map/Shape:output:09sequential_1/random_flip/map/strided_slice/stack:output:0;sequential_1/random_flip/map/strided_slice/stack_1:output:0;sequential_1/random_flip/map/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
8sequential_1/random_flip/map/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ
*sequential_1/random_flip/map/TensorArrayV2TensorListReserveAsequential_1/random_flip/map/TensorArrayV2/element_shape:output:03sequential_1/random_flip/map/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвЇ
Rsequential_1/random_flip/map/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"         Љ
Dsequential_1/random_flip/map/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsequential/rescaling/add:z:0[sequential_1/random_flip/map/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвd
"sequential_1/random_flip/map/ConstConst*
_output_shapes
: *
dtype0*
value	B : 
:sequential_1/random_flip/map/TensorArrayV2_1/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ
,sequential_1/random_flip/map/TensorArrayV2_1TensorListReserveCsequential_1/random_flip/map/TensorArrayV2_1/element_shape:output:03sequential_1/random_flip/map/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвq
/sequential_1/random_flip/map/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : й
"sequential_1/random_flip/map/whileStatelessWhile8sequential_1/random_flip/map/while/loop_counter:output:03sequential_1/random_flip/map/strided_slice:output:0+sequential_1/random_flip/map/Const:output:05sequential_1/random_flip/map/TensorArrayV2_1:handle:03sequential_1/random_flip/map/strided_slice:output:0Tsequential_1/random_flip/map/TensorArrayUnstack/TensorListFromTensor:output_handle:0*
T

2*
_lower_using_switch_merge(*
_num_original_outputs* 
_output_shapes
: : : : : : * 
_read_only_resource_inputs
 *
_stateful_parallelism( *9
body1R/
-sequential_1_random_flip_map_while_body_81560*9
cond1R/
-sequential_1_random_flip_map_while_cond_81559*
output_shapes
: : : : : : Ђ
Msequential_1/random_flip/map/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"         
?sequential_1/random_flip/map/TensorArrayV2Stack/TensorListStackTensorListStack+sequential_1/random_flip/map/while:output:3Vsequential_1/random_flip/map/TensorArrayV2Stack/TensorListStack/element_shape:output:0*1
_output_shapes
:џџџџџџџџџ*
element_dtype0
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0ь
conv2d/Conv2DConv2DHsequential_1/random_flip/map/TensorArrayV2Stack/TensorListStack:tensor:0$conv2d/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџўў *
paddingVALID*
strides

conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџўў h
conv2d/ReluReluconv2d/BiasAdd:output:0*
T0*1
_output_shapes
:џџџџџџџџџўў Ј
max_pooling2d/MaxPoolMaxPoolconv2d/Relu:activations:0*/
_output_shapes
:џџџџџџџџџ *
ksize
*
paddingVALID*
strides

conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0Ф
conv2d_1/Conv2DConv2Dmax_pooling2d/MaxPool:output:0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ}}@*
paddingVALID*
strides

conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ}}@j
conv2d_1/ReluReluconv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ}}@Ќ
max_pooling2d_1/MaxPoolMaxPoolconv2d_1/Relu:activations:0*/
_output_shapes
:џџџџџџџџџ>>@*
ksize
*
paddingVALID*
strides

conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Ц
conv2d_2/Conv2DConv2D max_pooling2d_1/MaxPool:output:0&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ<<@*
paddingVALID*
strides

conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ<<@j
conv2d_2/ReluReluconv2d_2/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ<<@Ќ
max_pooling2d_2/MaxPoolMaxPoolconv2d_2/Relu:activations:0*/
_output_shapes
:џџџџџџџџџ@*
ksize
*
paddingVALID*
strides

conv2d_3/Conv2D/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Ц
conv2d_3/Conv2DConv2D max_pooling2d_2/MaxPool:output:0&conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@*
paddingVALID*
strides

conv2d_3/BiasAdd/ReadVariableOpReadVariableOp(conv2d_3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
conv2d_3/BiasAddBiasAddconv2d_3/Conv2D:output:0'conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@j
conv2d_3/ReluReluconv2d_3/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ@Ќ
max_pooling2d_3/MaxPoolMaxPoolconv2d_3/Relu:activations:0*/
_output_shapes
:џџџџџџџџџ@*
ksize
*
paddingVALID*
strides

conv2d_4/Conv2D/ReadVariableOpReadVariableOp'conv2d_4_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Ц
conv2d_4/Conv2DConv2D max_pooling2d_3/MaxPool:output:0&conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@*
paddingVALID*
strides

conv2d_4/BiasAdd/ReadVariableOpReadVariableOp(conv2d_4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
conv2d_4/BiasAddBiasAddconv2d_4/Conv2D:output:0'conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@j
conv2d_4/ReluReluconv2d_4/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ@Ќ
max_pooling2d_4/MaxPoolMaxPoolconv2d_4/Relu:activations:0*/
_output_shapes
:џџџџџџџџџ@*
ksize
*
paddingVALID*
strides

conv2d_5/Conv2D/ReadVariableOpReadVariableOp'conv2d_5_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Ц
conv2d_5/Conv2DConv2D max_pooling2d_4/MaxPool:output:0&conv2d_5/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@*
paddingVALID*
strides

conv2d_5/BiasAdd/ReadVariableOpReadVariableOp(conv2d_5_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
conv2d_5/BiasAddBiasAddconv2d_5/Conv2D:output:0'conv2d_5/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@j
conv2d_5/ReluReluconv2d_5/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ@Ќ
max_pooling2d_5/MaxPoolMaxPoolconv2d_5/Relu:activations:0*/
_output_shapes
:џџџџџџџџџ@*
ksize
*
paddingVALID*
strides
^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   
flatten/ReshapeReshape max_pooling2d_5/MaxPool:output:0flatten/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype0
dense/MatMulMatMulflatten/Reshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@\

dense/ReluReludense/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes

:@
*
dtype0
dense_1/MatMulMatMuldense/Relu:activations:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ

dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
f
dense_1/SoftmaxSoftmaxdense_1/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
h
IdentityIdentitydense_1/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
в
NoOpNoOp^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp ^conv2d_3/BiasAdd/ReadVariableOp^conv2d_3/Conv2D/ReadVariableOp ^conv2d_4/BiasAdd/ReadVariableOp^conv2d_4/Conv2D/ReadVariableOp ^conv2d_5/BiasAdd/ReadVariableOp^conv2d_5/Conv2D/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:џџџџџџџџџ: : : : : : : : : : : : : : : : 2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp2B
conv2d_3/BiasAdd/ReadVariableOpconv2d_3/BiasAdd/ReadVariableOp2@
conv2d_3/Conv2D/ReadVariableOpconv2d_3/Conv2D/ReadVariableOp2B
conv2d_4/BiasAdd/ReadVariableOpconv2d_4/BiasAdd/ReadVariableOp2@
conv2d_4/Conv2D/ReadVariableOpconv2d_4/Conv2D/ReadVariableOp2B
conv2d_5/BiasAdd/ReadVariableOpconv2d_5/BiasAdd/ReadVariableOp2@
conv2d_5/Conv2D/ReadVariableOpconv2d_5/Conv2D/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:Y U
1
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
ы

(__inference_conv2d_5_layer_call_fn_82012

inputs!
unknown:@@
	unknown_0:@
identityЂStatefulPartitionedCallу
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_5_layer_call_and_return_conditional_losses_80908w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs

ќ
C__inference_conv2d_3_layer_call_and_return_conditional_losses_81963

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
к,
т
-sequential_1_random_flip_map_while_body_81560V
Rsequential_1_random_flip_map_while_sequential_1_random_flip_map_while_loop_counterQ
Msequential_1_random_flip_map_while_sequential_1_random_flip_map_strided_slice2
.sequential_1_random_flip_map_while_placeholder4
0sequential_1_random_flip_map_while_placeholder_1U
Qsequential_1_random_flip_map_while_sequential_1_random_flip_map_strided_slice_1_0
sequential_1_random_flip_map_while_tensorarrayv2read_tensorlistgetitem_sequential_1_random_flip_map_tensorarrayunstack_tensorlistfromtensor_0/
+sequential_1_random_flip_map_while_identity1
-sequential_1_random_flip_map_while_identity_11
-sequential_1_random_flip_map_while_identity_21
-sequential_1_random_flip_map_while_identity_3S
Osequential_1_random_flip_map_while_sequential_1_random_flip_map_strided_slice_1
sequential_1_random_flip_map_while_tensorarrayv2read_tensorlistgetitem_sequential_1_random_flip_map_tensorarrayunstack_tensorlistfromtensorЉ
Tsequential_1/random_flip/map/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"         Е
Fsequential_1/random_flip/map/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_1_random_flip_map_while_tensorarrayv2read_tensorlistgetitem_sequential_1_random_flip_map_tensorarrayunstack_tensorlistfromtensor_0.sequential_1_random_flip_map_while_placeholder]sequential_1/random_flip/map/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*$
_output_shapes
:*
element_dtype0Њ
Esequential_1/random_flip/map/while/flip_left_right/control_dependencyIdentityMsequential_1/random_flip/map/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*Y
_classO
MKloc:@sequential_1/random_flip/map/while/TensorArrayV2Read/TensorListGetItem*$
_output_shapes
:
Asequential_1/random_flip/map/while/flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:
<sequential_1/random_flip/map/while/flip_left_right/ReverseV2	ReverseV2Nsequential_1/random_flip/map/while/flip_left_right/control_dependency:output:0Jsequential_1/random_flip/map/while/flip_left_right/ReverseV2/axis:output:0*
T0*$
_output_shapes
:
Bsequential_1/random_flip/map/while/flip_up_down/control_dependencyIdentityEsequential_1/random_flip/map/while/flip_left_right/ReverseV2:output:0*
T0*O
_classE
CAloc:@sequential_1/random_flip/map/while/flip_left_right/ReverseV2*$
_output_shapes
:
>sequential_1/random_flip/map/while/flip_up_down/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: 
9sequential_1/random_flip/map/while/flip_up_down/ReverseV2	ReverseV2Ksequential_1/random_flip/map/while/flip_up_down/control_dependency:output:0Gsequential_1/random_flip/map/while/flip_up_down/ReverseV2/axis:output:0*
T0*$
_output_shapes
:Т
Gsequential_1/random_flip/map/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem0sequential_1_random_flip_map_while_placeholder_1.sequential_1_random_flip_map_while_placeholderBsequential_1/random_flip/map/while/flip_up_down/ReverseV2:output:0*
_output_shapes
: *
element_dtype0:щшвj
(sequential_1/random_flip/map/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :Г
&sequential_1/random_flip/map/while/addAddV2.sequential_1_random_flip_map_while_placeholder1sequential_1/random_flip/map/while/add/y:output:0*
T0*
_output_shapes
: l
*sequential_1/random_flip/map/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :л
(sequential_1/random_flip/map/while/add_1AddV2Rsequential_1_random_flip_map_while_sequential_1_random_flip_map_while_loop_counter3sequential_1/random_flip/map/while/add_1/y:output:0*
T0*
_output_shapes
: 
+sequential_1/random_flip/map/while/IdentityIdentity,sequential_1/random_flip/map/while/add_1:z:0*
T0*
_output_shapes
: Љ
-sequential_1/random_flip/map/while/Identity_1IdentityMsequential_1_random_flip_map_while_sequential_1_random_flip_map_strided_slice*
T0*
_output_shapes
: 
-sequential_1/random_flip/map/while/Identity_2Identity*sequential_1/random_flip/map/while/add:z:0*
T0*
_output_shapes
: Г
-sequential_1/random_flip/map/while/Identity_3IdentityWsequential_1/random_flip/map/while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: "c
+sequential_1_random_flip_map_while_identity4sequential_1/random_flip/map/while/Identity:output:0"g
-sequential_1_random_flip_map_while_identity_16sequential_1/random_flip/map/while/Identity_1:output:0"g
-sequential_1_random_flip_map_while_identity_26sequential_1/random_flip/map/while/Identity_2:output:0"g
-sequential_1_random_flip_map_while_identity_36sequential_1/random_flip/map/while/Identity_3:output:0"Є
Osequential_1_random_flip_map_while_sequential_1_random_flip_map_strided_slice_1Qsequential_1_random_flip_map_while_sequential_1_random_flip_map_strided_slice_1_0"
sequential_1_random_flip_map_while_tensorarrayv2read_tensorlistgetitem_sequential_1_random_flip_map_tensorarrayunstack_tensorlistfromtensorsequential_1_random_flip_map_while_tensorarrayv2read_tensorlistgetitem_sequential_1_random_flip_map_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*
_input_shapes
: : : : : : : 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
Ћ
J
"__inference__update_step_xla_81750
gradient
variable:
*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:
: *
	_noinline(:D @

_output_shapes
:

"
_user_specified_name
gradient:($
"
_user_specified_name
variable

ќ
C__inference_conv2d_5_layer_call_and_return_conditional_losses_82023

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
Ь
G
+__inference_random_flip_layer_call_fn_82113

inputs
identityО
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_random_flip_layer_call_and_return_conditional_losses_80617j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ:Y U
1
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
­
_
C__inference_resizing_layer_call_and_return_conditional_losses_80545

inputs
identity\
resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"      
resize/ResizeBilinearResizeBilinearinputsresize/size:output:0*
T0*1
_output_shapes
:џџџџџџџџџ*
half_pixel_centers(x
IdentityIdentity&resize/ResizeBilinear:resized_images:0*
T0*1
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ:Y U
1
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs"
L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Ц
serving_defaultВ
W
sequential_inputC
"serving_default_sequential_input:0џџџџџџџџџ;
dense_10
StatefulPartitionedCall:0џџџџџџџџџ
tensorflow/serving/predict:ѓІ

layer-0
layer-1
layer_with_weights-0
layer-2
layer-3
layer_with_weights-1
layer-4
layer-5
layer_with_weights-2
layer-6
layer-7
	layer_with_weights-3
	layer-8

layer-9
layer_with_weights-4
layer-10
layer-11
layer_with_weights-5
layer-12
layer-13
layer-14
layer_with_weights-6
layer-15
layer_with_weights-7
layer-16
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_sequential
Ф
layer-0
layer-1
	variables
trainable_variables
regularization_losses
 	keras_api
!__call__
*"&call_and_return_all_conditional_losses"
_tf_keras_sequential
З
#layer-0
$	variables
%trainable_variables
&regularization_losses
'	keras_api
(__call__
*)&call_and_return_all_conditional_losses"
_tf_keras_sequential
н
*	variables
+trainable_variables
,regularization_losses
-	keras_api
.__call__
*/&call_and_return_all_conditional_losses

0kernel
1bias
 2_jit_compiled_convolution_op"
_tf_keras_layer
Ѕ
3	variables
4trainable_variables
5regularization_losses
6	keras_api
7__call__
*8&call_and_return_all_conditional_losses"
_tf_keras_layer
н
9	variables
:trainable_variables
;regularization_losses
<	keras_api
=__call__
*>&call_and_return_all_conditional_losses

?kernel
@bias
 A_jit_compiled_convolution_op"
_tf_keras_layer
Ѕ
B	variables
Ctrainable_variables
Dregularization_losses
E	keras_api
F__call__
*G&call_and_return_all_conditional_losses"
_tf_keras_layer
н
H	variables
Itrainable_variables
Jregularization_losses
K	keras_api
L__call__
*M&call_and_return_all_conditional_losses

Nkernel
Obias
 P_jit_compiled_convolution_op"
_tf_keras_layer
Ѕ
Q	variables
Rtrainable_variables
Sregularization_losses
T	keras_api
U__call__
*V&call_and_return_all_conditional_losses"
_tf_keras_layer
н
W	variables
Xtrainable_variables
Yregularization_losses
Z	keras_api
[__call__
*\&call_and_return_all_conditional_losses

]kernel
^bias
 __jit_compiled_convolution_op"
_tf_keras_layer
Ѕ
`	variables
atrainable_variables
bregularization_losses
c	keras_api
d__call__
*e&call_and_return_all_conditional_losses"
_tf_keras_layer
н
f	variables
gtrainable_variables
hregularization_losses
i	keras_api
j__call__
*k&call_and_return_all_conditional_losses

lkernel
mbias
 n_jit_compiled_convolution_op"
_tf_keras_layer
Ѕ
o	variables
ptrainable_variables
qregularization_losses
r	keras_api
s__call__
*t&call_and_return_all_conditional_losses"
_tf_keras_layer
н
u	variables
vtrainable_variables
wregularization_losses
x	keras_api
y__call__
*z&call_and_return_all_conditional_losses

{kernel
|bias
 }_jit_compiled_convolution_op"
_tf_keras_layer
Љ
~	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
Ћ
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
У
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
kernel
	bias"
_tf_keras_layer
У
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
kernel
	bias"
_tf_keras_layer

00
11
?2
@3
N4
O5
]6
^7
l8
m9
{10
|11
12
13
14
15"
trackable_list_wrapper

00
11
?2
@3
N4
O5
]6
^7
l8
m9
{10
|11
12
13
14
15"
trackable_list_wrapper
 "
trackable_list_wrapper
Я
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
э
trace_0
 trace_1
Ёtrace_2
Ђtrace_32њ
,__inference_sequential_2_layer_call_fn_80993
,__inference_sequential_2_layer_call_fn_81427
,__inference_sequential_2_layer_call_fn_81464
,__inference_sequential_2_layer_call_fn_81243П
ЖВВ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0z trace_1zЁtrace_2zЂtrace_3
й
Ѓtrace_0
Єtrace_1
Ѕtrace_2
Іtrace_32ц
G__inference_sequential_2_layer_call_and_return_conditional_losses_81538
G__inference_sequential_2_layer_call_and_return_conditional_losses_81670
G__inference_sequential_2_layer_call_and_return_conditional_losses_81296
G__inference_sequential_2_layer_call_and_return_conditional_losses_81349П
ЖВВ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zЃtrace_0zЄtrace_1zЅtrace_2zІtrace_3
дBб
 __inference__wrapped_model_80532sequential_input"
В
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
Ѓ
Ї
_variables
Ј_iterations
Љ_learning_rate
Њ_index_dict
Ћ
_momentums
Ќ_velocities
­_update_step_xla"
experimentalOptimizer
-
Ўserving_default"
signature_map
Ћ
Џ	variables
Аtrainable_variables
Бregularization_losses
В	keras_api
Г__call__
+Д&call_and_return_all_conditional_losses"
_tf_keras_layer
Ћ
Е	variables
Жtrainable_variables
Зregularization_losses
И	keras_api
Й__call__
+К&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
В
Лnon_trainable_variables
Мlayers
Нmetrics
 Оlayer_regularization_losses
Пlayer_metrics
	variables
trainable_variables
regularization_losses
!__call__
*"&call_and_return_all_conditional_losses
&""call_and_return_conditional_losses"
_generic_user_object
х
Рtrace_0
Сtrace_1
Тtrace_2
Уtrace_32ђ
*__inference_sequential_layer_call_fn_80561
*__inference_sequential_layer_call_fn_81755
*__inference_sequential_layer_call_fn_81760
*__inference_sequential_layer_call_fn_80594П
ЖВВ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zРtrace_0zСtrace_1zТtrace_2zУtrace_3
б
Фtrace_0
Хtrace_1
Цtrace_2
Чtrace_32о
E__inference_sequential_layer_call_and_return_conditional_losses_81770
E__inference_sequential_layer_call_and_return_conditional_losses_81780
E__inference_sequential_layer_call_and_return_conditional_losses_80600
E__inference_sequential_layer_call_and_return_conditional_losses_80606П
ЖВВ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zФtrace_0zХtrace_1zЦtrace_2zЧtrace_3
У
Ш	variables
Щtrainable_variables
Ъregularization_losses
Ы	keras_api
Ь__call__
+Э&call_and_return_all_conditional_losses
Ю_random_generator"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
В
Яnon_trainable_variables
аlayers
бmetrics
 вlayer_regularization_losses
гlayer_metrics
$	variables
%trainable_variables
&regularization_losses
(__call__
*)&call_and_return_all_conditional_losses
&)"call_and_return_conditional_losses"
_generic_user_object
э
дtrace_0
еtrace_1
жtrace_2
зtrace_32њ
,__inference_sequential_1_layer_call_fn_80623
,__inference_sequential_1_layer_call_fn_81785
,__inference_sequential_1_layer_call_fn_81790
,__inference_sequential_1_layer_call_fn_80716П
ЖВВ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zдtrace_0zеtrace_1zжtrace_2zзtrace_3
й
иtrace_0
йtrace_1
кtrace_2
лtrace_32ц
G__inference_sequential_1_layer_call_and_return_conditional_losses_81794
G__inference_sequential_1_layer_call_and_return_conditional_losses_81853
G__inference_sequential_1_layer_call_and_return_conditional_losses_80721
G__inference_sequential_1_layer_call_and_return_conditional_losses_80726П
ЖВВ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zиtrace_0zйtrace_1zкtrace_2zлtrace_3
.
00
11"
trackable_list_wrapper
.
00
11"
trackable_list_wrapper
 "
trackable_list_wrapper
В
мnon_trainable_variables
нlayers
оmetrics
 пlayer_regularization_losses
рlayer_metrics
*	variables
+trainable_variables
,regularization_losses
.__call__
*/&call_and_return_all_conditional_losses
&/"call_and_return_conditional_losses"
_generic_user_object
ь
сtrace_02Э
&__inference_conv2d_layer_call_fn_81862Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zсtrace_0

тtrace_02ш
A__inference_conv2d_layer_call_and_return_conditional_losses_81873Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zтtrace_0
':% 2conv2d/kernel
: 2conv2d/bias
Д2БЎ
ЃВ
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
В
уnon_trainable_variables
фlayers
хmetrics
 цlayer_regularization_losses
чlayer_metrics
3	variables
4trainable_variables
5regularization_losses
7__call__
*8&call_and_return_all_conditional_losses
&8"call_and_return_conditional_losses"
_generic_user_object
ѓ
шtrace_02д
-__inference_max_pooling2d_layer_call_fn_81878Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zшtrace_0

щtrace_02я
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_81883Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zщtrace_0
.
?0
@1"
trackable_list_wrapper
.
?0
@1"
trackable_list_wrapper
 "
trackable_list_wrapper
В
ъnon_trainable_variables
ыlayers
ьmetrics
 эlayer_regularization_losses
юlayer_metrics
9	variables
:trainable_variables
;regularization_losses
=__call__
*>&call_and_return_all_conditional_losses
&>"call_and_return_conditional_losses"
_generic_user_object
ю
яtrace_02Я
(__inference_conv2d_1_layer_call_fn_81892Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zяtrace_0

№trace_02ъ
C__inference_conv2d_1_layer_call_and_return_conditional_losses_81903Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 z№trace_0
):' @2conv2d_1/kernel
:@2conv2d_1/bias
Д2БЎ
ЃВ
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
В
ёnon_trainable_variables
ђlayers
ѓmetrics
 єlayer_regularization_losses
ѕlayer_metrics
B	variables
Ctrainable_variables
Dregularization_losses
F__call__
*G&call_and_return_all_conditional_losses
&G"call_and_return_conditional_losses"
_generic_user_object
ѕ
іtrace_02ж
/__inference_max_pooling2d_1_layer_call_fn_81908Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zіtrace_0

їtrace_02ё
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_81913Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zїtrace_0
.
N0
O1"
trackable_list_wrapper
.
N0
O1"
trackable_list_wrapper
 "
trackable_list_wrapper
В
јnon_trainable_variables
љlayers
њmetrics
 ћlayer_regularization_losses
ќlayer_metrics
H	variables
Itrainable_variables
Jregularization_losses
L__call__
*M&call_and_return_all_conditional_losses
&M"call_and_return_conditional_losses"
_generic_user_object
ю
§trace_02Я
(__inference_conv2d_2_layer_call_fn_81922Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 z§trace_0

ўtrace_02ъ
C__inference_conv2d_2_layer_call_and_return_conditional_losses_81933Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zўtrace_0
):'@@2conv2d_2/kernel
:@2conv2d_2/bias
Д2БЎ
ЃВ
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
В
џnon_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
Q	variables
Rtrainable_variables
Sregularization_losses
U__call__
*V&call_and_return_all_conditional_losses
&V"call_and_return_conditional_losses"
_generic_user_object
ѕ
trace_02ж
/__inference_max_pooling2d_2_layer_call_fn_81938Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0

trace_02ё
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_81943Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0
.
]0
^1"
trackable_list_wrapper
.
]0
^1"
trackable_list_wrapper
 "
trackable_list_wrapper
В
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
W	variables
Xtrainable_variables
Yregularization_losses
[__call__
*\&call_and_return_all_conditional_losses
&\"call_and_return_conditional_losses"
_generic_user_object
ю
trace_02Я
(__inference_conv2d_3_layer_call_fn_81952Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0

trace_02ъ
C__inference_conv2d_3_layer_call_and_return_conditional_losses_81963Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0
):'@@2conv2d_3/kernel
:@2conv2d_3/bias
Д2БЎ
ЃВ
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
В
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
`	variables
atrainable_variables
bregularization_losses
d__call__
*e&call_and_return_all_conditional_losses
&e"call_and_return_conditional_losses"
_generic_user_object
ѕ
trace_02ж
/__inference_max_pooling2d_3_layer_call_fn_81968Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0

trace_02ё
J__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_81973Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0
.
l0
m1"
trackable_list_wrapper
.
l0
m1"
trackable_list_wrapper
 "
trackable_list_wrapper
В
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
f	variables
gtrainable_variables
hregularization_losses
j__call__
*k&call_and_return_all_conditional_losses
&k"call_and_return_conditional_losses"
_generic_user_object
ю
trace_02Я
(__inference_conv2d_4_layer_call_fn_81982Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0

trace_02ъ
C__inference_conv2d_4_layer_call_and_return_conditional_losses_81993Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0
):'@@2conv2d_4/kernel
:@2conv2d_4/bias
Д2БЎ
ЃВ
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
В
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
o	variables
ptrainable_variables
qregularization_losses
s__call__
*t&call_and_return_all_conditional_losses
&t"call_and_return_conditional_losses"
_generic_user_object
ѕ
 trace_02ж
/__inference_max_pooling2d_4_layer_call_fn_81998Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 z trace_0

Ёtrace_02ё
J__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_82003Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zЁtrace_0
.
{0
|1"
trackable_list_wrapper
.
{0
|1"
trackable_list_wrapper
 "
trackable_list_wrapper
В
Ђnon_trainable_variables
Ѓlayers
Єmetrics
 Ѕlayer_regularization_losses
Іlayer_metrics
u	variables
vtrainable_variables
wregularization_losses
y__call__
*z&call_and_return_all_conditional_losses
&z"call_and_return_conditional_losses"
_generic_user_object
ю
Їtrace_02Я
(__inference_conv2d_5_layer_call_fn_82012Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zЇtrace_0

Јtrace_02ъ
C__inference_conv2d_5_layer_call_and_return_conditional_losses_82023Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zЈtrace_0
):'@@2conv2d_5/kernel
:@2conv2d_5/bias
Д2БЎ
ЃВ
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Ж
Љnon_trainable_variables
Њlayers
Ћmetrics
 Ќlayer_regularization_losses
­layer_metrics
~	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
ѕ
Ўtrace_02ж
/__inference_max_pooling2d_5_layer_call_fn_82028Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zЎtrace_0

Џtrace_02ё
J__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_82033Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zЏtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
И
Аnon_trainable_variables
Бlayers
Вmetrics
 Гlayer_regularization_losses
Дlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
э
Еtrace_02Ю
'__inference_flatten_layer_call_fn_82038Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zЕtrace_0

Жtrace_02щ
B__inference_flatten_layer_call_and_return_conditional_losses_82044Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zЖtrace_0
0
0
1"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
И
Зnon_trainable_variables
Иlayers
Йmetrics
 Кlayer_regularization_losses
Лlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
ы
Мtrace_02Ь
%__inference_dense_layer_call_fn_82053Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zМtrace_0

Нtrace_02ч
@__inference_dense_layer_call_and_return_conditional_losses_82064Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zНtrace_0
:	@2dense/kernel
:@2
dense/bias
0
0
1"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
И
Оnon_trainable_variables
Пlayers
Рmetrics
 Сlayer_regularization_losses
Тlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
э
Уtrace_02Ю
'__inference_dense_1_layer_call_fn_82073Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zУtrace_0

Фtrace_02щ
B__inference_dense_1_layer_call_and_return_conditional_losses_82084Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zФtrace_0
 :@
2dense_1/kernel
:
2dense_1/bias
 "
trackable_list_wrapper

0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16"
trackable_list_wrapper
0
Х0
Ц1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
B
,__inference_sequential_2_layer_call_fn_80993sequential_input"П
ЖВВ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
§Bњ
,__inference_sequential_2_layer_call_fn_81427inputs"П
ЖВВ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
§Bњ
,__inference_sequential_2_layer_call_fn_81464inputs"П
ЖВВ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
,__inference_sequential_2_layer_call_fn_81243sequential_input"П
ЖВВ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
G__inference_sequential_2_layer_call_and_return_conditional_losses_81538inputs"П
ЖВВ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
G__inference_sequential_2_layer_call_and_return_conditional_losses_81670inputs"П
ЖВВ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ЂB
G__inference_sequential_2_layer_call_and_return_conditional_losses_81296sequential_input"П
ЖВВ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ЂB
G__inference_sequential_2_layer_call_and_return_conditional_losses_81349sequential_input"П
ЖВВ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
П
Ј0
Ч1
Ш2
Щ3
Ъ4
Ы5
Ь6
Э7
Ю8
Я9
а10
б11
в12
г13
д14
е15
ж16
з17
и18
й19
к20
л21
м22
н23
о24
п25
р26
с27
т28
у29
ф30
х31
ц32"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
І
Ч0
Щ1
Ы2
Э3
Я4
б5
г6
е7
з8
й9
л10
н11
п12
с13
у14
х15"
trackable_list_wrapper
І
Ш0
Ъ1
Ь2
Ю3
а4
в5
д6
ж7
и8
к9
м10
о11
р12
т13
ф14
ц15"
trackable_list_wrapper
Ы	
чtrace_0
шtrace_1
щtrace_2
ъtrace_3
ыtrace_4
ьtrace_5
эtrace_6
юtrace_7
яtrace_8
№trace_9
ёtrace_10
ђtrace_11
ѓtrace_12
єtrace_13
ѕtrace_14
іtrace_152ќ
"__inference__update_step_xla_81675
"__inference__update_step_xla_81680
"__inference__update_step_xla_81685
"__inference__update_step_xla_81690
"__inference__update_step_xla_81695
"__inference__update_step_xla_81700
"__inference__update_step_xla_81705
"__inference__update_step_xla_81710
"__inference__update_step_xla_81715
"__inference__update_step_xla_81720
"__inference__update_step_xla_81725
"__inference__update_step_xla_81730
"__inference__update_step_xla_81735
"__inference__update_step_xla_81740
"__inference__update_step_xla_81745
"__inference__update_step_xla_81750Й
ЎВЊ
FullArgSpec2
args*'
jself

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 0zчtrace_0zшtrace_1zщtrace_2zъtrace_3zыtrace_4zьtrace_5zэtrace_6zюtrace_7zяtrace_8z№trace_9zёtrace_10zђtrace_11zѓtrace_12zєtrace_13zѕtrace_14zіtrace_15
гBа
#__inference_signature_wrapper_81390sequential_input"
В
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
И
їnon_trainable_variables
јlayers
љmetrics
 њlayer_regularization_losses
ћlayer_metrics
Џ	variables
Аtrainable_variables
Бregularization_losses
Г__call__
+Д&call_and_return_all_conditional_losses
'Д"call_and_return_conditional_losses"
_generic_user_object
ю
ќtrace_02Я
(__inference_resizing_layer_call_fn_82089Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zќtrace_0

§trace_02ъ
C__inference_resizing_layer_call_and_return_conditional_losses_82095Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 z§trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
И
ўnon_trainable_variables
џlayers
metrics
 layer_regularization_losses
layer_metrics
Е	variables
Жtrainable_variables
Зregularization_losses
Й__call__
+К&call_and_return_all_conditional_losses
'К"call_and_return_conditional_losses"
_generic_user_object
я
trace_02а
)__inference_rescaling_layer_call_fn_82100Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0

trace_02ы
D__inference_rescaling_layer_call_and_return_conditional_losses_82108Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
B
*__inference_sequential_layer_call_fn_80561resizing_input"П
ЖВВ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ћBј
*__inference_sequential_layer_call_fn_81755inputs"П
ЖВВ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ћBј
*__inference_sequential_layer_call_fn_81760inputs"П
ЖВВ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
*__inference_sequential_layer_call_fn_80594resizing_input"П
ЖВВ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
E__inference_sequential_layer_call_and_return_conditional_losses_81770inputs"П
ЖВВ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
E__inference_sequential_layer_call_and_return_conditional_losses_81780inputs"П
ЖВВ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
E__inference_sequential_layer_call_and_return_conditional_losses_80600resizing_input"П
ЖВВ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
E__inference_sequential_layer_call_and_return_conditional_losses_80606resizing_input"П
ЖВВ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
И
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
Ш	variables
Щtrainable_variables
Ъregularization_losses
Ь__call__
+Э&call_and_return_all_conditional_losses
'Э"call_and_return_conditional_losses"
_generic_user_object
Ы
trace_0
trace_12
+__inference_random_flip_layer_call_fn_82113
+__inference_random_flip_layer_call_fn_82118Г
ЊВІ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЂ
p

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0ztrace_1

trace_0
trace_12Ц
F__inference_random_flip_layer_call_and_return_conditional_losses_82122
F__inference_random_flip_layer_call_and_return_conditional_losses_82181Г
ЊВІ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЂ
p

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0ztrace_1
/

_generator"
_generic_user_object
 "
trackable_list_wrapper
'
#0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
B
,__inference_sequential_1_layer_call_fn_80623random_flip_input"П
ЖВВ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
§Bњ
,__inference_sequential_1_layer_call_fn_81785inputs"П
ЖВВ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
§Bњ
,__inference_sequential_1_layer_call_fn_81790inputs"П
ЖВВ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
,__inference_sequential_1_layer_call_fn_80716random_flip_input"П
ЖВВ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
G__inference_sequential_1_layer_call_and_return_conditional_losses_81794inputs"П
ЖВВ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
G__inference_sequential_1_layer_call_and_return_conditional_losses_81853inputs"П
ЖВВ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ЃB 
G__inference_sequential_1_layer_call_and_return_conditional_losses_80721random_flip_input"П
ЖВВ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ЃB 
G__inference_sequential_1_layer_call_and_return_conditional_losses_80726random_flip_input"П
ЖВВ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
кBз
&__inference_conv2d_layer_call_fn_81862inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ѕBђ
A__inference_conv2d_layer_call_and_return_conditional_losses_81873inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
сBо
-__inference_max_pooling2d_layer_call_fn_81878inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ќBљ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_81883inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
мBй
(__inference_conv2d_1_layer_call_fn_81892inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
їBє
C__inference_conv2d_1_layer_call_and_return_conditional_losses_81903inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
уBр
/__inference_max_pooling2d_1_layer_call_fn_81908inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ўBћ
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_81913inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
мBй
(__inference_conv2d_2_layer_call_fn_81922inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
їBє
C__inference_conv2d_2_layer_call_and_return_conditional_losses_81933inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
уBр
/__inference_max_pooling2d_2_layer_call_fn_81938inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ўBћ
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_81943inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
мBй
(__inference_conv2d_3_layer_call_fn_81952inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
їBє
C__inference_conv2d_3_layer_call_and_return_conditional_losses_81963inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
уBр
/__inference_max_pooling2d_3_layer_call_fn_81968inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ўBћ
J__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_81973inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
мBй
(__inference_conv2d_4_layer_call_fn_81982inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
їBє
C__inference_conv2d_4_layer_call_and_return_conditional_losses_81993inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
уBр
/__inference_max_pooling2d_4_layer_call_fn_81998inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ўBћ
J__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_82003inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
мBй
(__inference_conv2d_5_layer_call_fn_82012inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
їBє
C__inference_conv2d_5_layer_call_and_return_conditional_losses_82023inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
уBр
/__inference_max_pooling2d_5_layer_call_fn_82028inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ўBћ
J__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_82033inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
лBи
'__inference_flatten_layer_call_fn_82038inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
іBѓ
B__inference_flatten_layer_call_and_return_conditional_losses_82044inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
йBж
%__inference_dense_layer_call_fn_82053inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
єBё
@__inference_dense_layer_call_and_return_conditional_losses_82064inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
лBи
'__inference_dense_1_layer_call_fn_82073inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
іBѓ
B__inference_dense_1_layer_call_and_return_conditional_losses_82084inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
R
	variables
	keras_api

total

count"
_tf_keras_metric
c
	variables
	keras_api

total

count

_fn_kwargs"
_tf_keras_metric
,:* 2Adam/m/conv2d/kernel
,:* 2Adam/v/conv2d/kernel
: 2Adam/m/conv2d/bias
: 2Adam/v/conv2d/bias
.:, @2Adam/m/conv2d_1/kernel
.:, @2Adam/v/conv2d_1/kernel
 :@2Adam/m/conv2d_1/bias
 :@2Adam/v/conv2d_1/bias
.:,@@2Adam/m/conv2d_2/kernel
.:,@@2Adam/v/conv2d_2/kernel
 :@2Adam/m/conv2d_2/bias
 :@2Adam/v/conv2d_2/bias
.:,@@2Adam/m/conv2d_3/kernel
.:,@@2Adam/v/conv2d_3/kernel
 :@2Adam/m/conv2d_3/bias
 :@2Adam/v/conv2d_3/bias
.:,@@2Adam/m/conv2d_4/kernel
.:,@@2Adam/v/conv2d_4/kernel
 :@2Adam/m/conv2d_4/bias
 :@2Adam/v/conv2d_4/bias
.:,@@2Adam/m/conv2d_5/kernel
.:,@@2Adam/v/conv2d_5/kernel
 :@2Adam/m/conv2d_5/bias
 :@2Adam/v/conv2d_5/bias
$:"	@2Adam/m/dense/kernel
$:"	@2Adam/v/dense/kernel
:@2Adam/m/dense/bias
:@2Adam/v/dense/bias
%:#@
2Adam/m/dense_1/kernel
%:#@
2Adam/v/dense_1/kernel
:
2Adam/m/dense_1/bias
:
2Adam/v/dense_1/bias
їBє
"__inference__update_step_xla_81675gradientvariable"З
ЎВЊ
FullArgSpec2
args*'
jself

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
їBє
"__inference__update_step_xla_81680gradientvariable"З
ЎВЊ
FullArgSpec2
args*'
jself

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
їBє
"__inference__update_step_xla_81685gradientvariable"З
ЎВЊ
FullArgSpec2
args*'
jself

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
їBє
"__inference__update_step_xla_81690gradientvariable"З
ЎВЊ
FullArgSpec2
args*'
jself

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
їBє
"__inference__update_step_xla_81695gradientvariable"З
ЎВЊ
FullArgSpec2
args*'
jself

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
їBє
"__inference__update_step_xla_81700gradientvariable"З
ЎВЊ
FullArgSpec2
args*'
jself

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
їBє
"__inference__update_step_xla_81705gradientvariable"З
ЎВЊ
FullArgSpec2
args*'
jself

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
їBє
"__inference__update_step_xla_81710gradientvariable"З
ЎВЊ
FullArgSpec2
args*'
jself

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
їBє
"__inference__update_step_xla_81715gradientvariable"З
ЎВЊ
FullArgSpec2
args*'
jself

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
їBє
"__inference__update_step_xla_81720gradientvariable"З
ЎВЊ
FullArgSpec2
args*'
jself

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
їBє
"__inference__update_step_xla_81725gradientvariable"З
ЎВЊ
FullArgSpec2
args*'
jself

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
їBє
"__inference__update_step_xla_81730gradientvariable"З
ЎВЊ
FullArgSpec2
args*'
jself

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
їBє
"__inference__update_step_xla_81735gradientvariable"З
ЎВЊ
FullArgSpec2
args*'
jself

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
їBє
"__inference__update_step_xla_81740gradientvariable"З
ЎВЊ
FullArgSpec2
args*'
jself

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
їBє
"__inference__update_step_xla_81745gradientvariable"З
ЎВЊ
FullArgSpec2
args*'
jself

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
їBє
"__inference__update_step_xla_81750gradientvariable"З
ЎВЊ
FullArgSpec2
args*'
jself

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
мBй
(__inference_resizing_layer_call_fn_82089inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
їBє
C__inference_resizing_layer_call_and_return_conditional_losses_82095inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
нBк
)__inference_rescaling_layer_call_fn_82100inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
јBѕ
D__inference_rescaling_layer_call_and_return_conditional_losses_82108inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
№Bэ
+__inference_random_flip_layer_call_fn_82113inputs"Г
ЊВІ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЂ
p

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
№Bэ
+__inference_random_flip_layer_call_fn_82118inputs"Г
ЊВІ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЂ
p

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
F__inference_random_flip_layer_call_and_return_conditional_losses_82122inputs"Г
ЊВІ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЂ
p

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
F__inference_random_flip_layer_call_and_return_conditional_losses_82181inputs"Г
ЊВІ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЂ
p

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
/

_state_var"
_generic_user_object
0
0
1"
trackable_list_wrapper
.
	variables"
_generic_user_object
:  (2total
:  (2count
0
0
1"
trackable_list_wrapper
.
	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
 :	2random_flip/StateVarЄ
"__inference__update_step_xla_81675~xЂu
nЂk
!
gradient 
<9	%Ђ"
њ 

p
` VariableSpec 
`рМп­Ўи?
Њ "
 
"__inference__update_step_xla_81680f`Ђ]
VЂS

gradient 
0-	Ђ
њ 

p
` VariableSpec 
`рщ­Ўи?
Њ "
 Є
"__inference__update_step_xla_81685~xЂu
nЂk
!
gradient @
<9	%Ђ"
њ @

p
` VariableSpec 
` ь­Ўи?
Њ "
 
"__inference__update_step_xla_81690f`Ђ]
VЂS

gradient@
0-	Ђ
њ@

p
` VariableSpec 
`ь­Ўи?
Њ "
 Є
"__inference__update_step_xla_81695~xЂu
nЂk
!
gradient@@
<9	%Ђ"
њ@@

p
` VariableSpec 
`РЇА­Ўи?
Њ "
 
"__inference__update_step_xla_81700f`Ђ]
VЂS

gradient@
0-	Ђ
њ@

p
` VariableSpec 
` ІА­Ўи?
Њ "
 Є
"__inference__update_step_xla_81705~xЂu
nЂk
!
gradient@@
<9	%Ђ"
њ@@

p
` VariableSpec 
`РА­Ўи?
Њ "
 
"__inference__update_step_xla_81710f`Ђ]
VЂS

gradient@
0-	Ђ
њ@

p
` VariableSpec 
` А­Ўи?
Њ "
 Є
"__inference__update_step_xla_81715~xЂu
nЂk
!
gradient@@
<9	%Ђ"
њ@@

p
` VariableSpec 
`ъД­Ўи?
Њ "
 
"__inference__update_step_xla_81720f`Ђ]
VЂS

gradient@
0-	Ђ
њ@

p
` VariableSpec 
`ршД­Ўи?
Њ "
 Є
"__inference__update_step_xla_81725~xЂu
nЂk
!
gradient@@
<9	%Ђ"
њ@@

p
` VariableSpec 
`р­И­Ўи?
Њ "
 
"__inference__update_step_xla_81730f`Ђ]
VЂS

gradient@
0-	Ђ
њ@

p
` VariableSpec 
`РЌИ­Ўи?
Њ "
 
"__inference__update_step_xla_81735pjЂg
`Ђ]

gradient	@
52	Ђ
њ	@

p
` VariableSpec 
` ШЛ­Ўи?
Њ "
 
"__inference__update_step_xla_81740f`Ђ]
VЂS

gradient@
0-	Ђ
њ@

p
` VariableSpec 
`рыМ­Ўи?
Њ "
 
"__inference__update_step_xla_81745nhЂe
^Ђ[

gradient@

41	Ђ
њ@


p
` VariableSpec 
`рэЛ­Ўи?
Њ "
 
"__inference__update_step_xla_81750f`Ђ]
VЂS

gradient

0-	Ђ
њ


p
` VariableSpec 
` ѕЛ­Ўи?
Њ "
 Г
 __inference__wrapped_model_8053201?@NO]^lm{|CЂ@
9Ђ6
41
sequential_inputџџџџџџџџџ
Њ "1Њ.
,
dense_1!
dense_1џџџџџџџџџ
К
C__inference_conv2d_1_layer_call_and_return_conditional_losses_81903s?@7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ 
Њ "4Ђ1
*'
tensor_0џџџџџџџџџ}}@
 
(__inference_conv2d_1_layer_call_fn_81892h?@7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ 
Њ ")&
unknownџџџџџџџџџ}}@К
C__inference_conv2d_2_layer_call_and_return_conditional_losses_81933sNO7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ>>@
Њ "4Ђ1
*'
tensor_0џџџџџџџџџ<<@
 
(__inference_conv2d_2_layer_call_fn_81922hNO7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ>>@
Њ ")&
unknownџџџџџџџџџ<<@К
C__inference_conv2d_3_layer_call_and_return_conditional_losses_81963s]^7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ@
Њ "4Ђ1
*'
tensor_0џџџџџџџџџ@
 
(__inference_conv2d_3_layer_call_fn_81952h]^7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ@
Њ ")&
unknownџџџџџџџџџ@К
C__inference_conv2d_4_layer_call_and_return_conditional_losses_81993slm7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ@
Њ "4Ђ1
*'
tensor_0џџџџџџџџџ@
 
(__inference_conv2d_4_layer_call_fn_81982hlm7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ@
Њ ")&
unknownџџџџџџџџџ@К
C__inference_conv2d_5_layer_call_and_return_conditional_losses_82023s{|7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ@
Њ "4Ђ1
*'
tensor_0џџџџџџџџџ@
 
(__inference_conv2d_5_layer_call_fn_82012h{|7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ@
Њ ")&
unknownџџџџџџџџџ@М
A__inference_conv2d_layer_call_and_return_conditional_losses_81873w019Ђ6
/Ђ,
*'
inputsџџџџџџџџџ
Њ "6Ђ3
,)
tensor_0џџџџџџџџџўў 
 
&__inference_conv2d_layer_call_fn_81862l019Ђ6
/Ђ,
*'
inputsџџџџџџџџџ
Њ "+(
unknownџџџџџџџџџўў Ћ
B__inference_dense_1_layer_call_and_return_conditional_losses_82084e/Ђ,
%Ђ"
 
inputsџџџџџџџџџ@
Њ ",Ђ)
"
tensor_0џџџџџџџџџ

 
'__inference_dense_1_layer_call_fn_82073Z/Ђ,
%Ђ"
 
inputsџџџџџџџџџ@
Њ "!
unknownџџџџџџџџџ
Њ
@__inference_dense_layer_call_and_return_conditional_losses_82064f0Ђ-
&Ђ#
!
inputsџџџџџџџџџ
Њ ",Ђ)
"
tensor_0џџџџџџџџџ@
 
%__inference_dense_layer_call_fn_82053[0Ђ-
&Ђ#
!
inputsџџџџџџџџџ
Њ "!
unknownџџџџџџџџџ@Ў
B__inference_flatten_layer_call_and_return_conditional_losses_82044h7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ@
Њ "-Ђ*
# 
tensor_0џџџџџџџџџ
 
'__inference_flatten_layer_call_fn_82038]7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ@
Њ ""
unknownџџџџџџџџџє
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_81913ЅRЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "OЂL
EB
tensor_04џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Ю
/__inference_max_pooling2d_1_layer_call_fn_81908RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "DA
unknown4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџє
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_81943ЅRЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "OЂL
EB
tensor_04џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Ю
/__inference_max_pooling2d_2_layer_call_fn_81938RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "DA
unknown4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџє
J__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_81973ЅRЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "OЂL
EB
tensor_04џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Ю
/__inference_max_pooling2d_3_layer_call_fn_81968RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "DA
unknown4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџє
J__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_82003ЅRЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "OЂL
EB
tensor_04џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Ю
/__inference_max_pooling2d_4_layer_call_fn_81998RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "DA
unknown4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџє
J__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_82033ЅRЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "OЂL
EB
tensor_04џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Ю
/__inference_max_pooling2d_5_layer_call_fn_82028RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "DA
unknown4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџђ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_81883ЅRЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "OЂL
EB
tensor_04џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Ь
-__inference_max_pooling2d_layer_call_fn_81878RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "DA
unknown4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџС
F__inference_random_flip_layer_call_and_return_conditional_losses_82122w=Ђ:
3Ђ0
*'
inputsџџџџџџџџџ
p 
Њ "6Ђ3
,)
tensor_0џџџџџџџџџ
 С
F__inference_random_flip_layer_call_and_return_conditional_losses_82181w=Ђ:
3Ђ0
*'
inputsџџџџџџџџџ
p
Њ "6Ђ3
,)
tensor_0џџџџџџџџџ
 
+__inference_random_flip_layer_call_fn_82113l=Ђ:
3Ђ0
*'
inputsџџџџџџџџџ
p 
Њ "+(
unknownџџџџџџџџџ
+__inference_random_flip_layer_call_fn_82118l=Ђ:
3Ђ0
*'
inputsџџџџџџџџџ
p
Њ "+(
unknownџџџџџџџџџЛ
D__inference_rescaling_layer_call_and_return_conditional_losses_82108s9Ђ6
/Ђ,
*'
inputsџџџџџџџџџ
Њ "6Ђ3
,)
tensor_0џџџџџџџџџ
 
)__inference_rescaling_layer_call_fn_82100h9Ђ6
/Ђ,
*'
inputsџџџџџџџџџ
Њ "+(
unknownџџџџџџџџџК
C__inference_resizing_layer_call_and_return_conditional_losses_82095s9Ђ6
/Ђ,
*'
inputsџџџџџџџџџ
Њ "6Ђ3
,)
tensor_0џџџџџџџџџ
 
(__inference_resizing_layer_call_fn_82089h9Ђ6
/Ђ,
*'
inputsџџџџџџџџџ
Њ "+(
unknownџџџџџџџџџв
G__inference_sequential_1_layer_call_and_return_conditional_losses_80721LЂI
BЂ?
52
random_flip_inputџџџџџџџџџ
p 

 
Њ "6Ђ3
,)
tensor_0џџџџџџџџџ
 в
G__inference_sequential_1_layer_call_and_return_conditional_losses_80726LЂI
BЂ?
52
random_flip_inputџџџџџџџџџ
p

 
Њ "6Ђ3
,)
tensor_0џџџџџџџџџ
 Ц
G__inference_sequential_1_layer_call_and_return_conditional_losses_81794{AЂ>
7Ђ4
*'
inputsџџџџџџџџџ
p 

 
Њ "6Ђ3
,)
tensor_0џџџџџџџџџ
 Ц
G__inference_sequential_1_layer_call_and_return_conditional_losses_81853{AЂ>
7Ђ4
*'
inputsџџџџџџџџџ
p

 
Њ "6Ђ3
,)
tensor_0џџџџџџџџџ
 Ћ
,__inference_sequential_1_layer_call_fn_80623{LЂI
BЂ?
52
random_flip_inputџџџџџџџџџ
p 

 
Њ "+(
unknownџџџџџџџџџЋ
,__inference_sequential_1_layer_call_fn_80716{LЂI
BЂ?
52
random_flip_inputџџџџџџџџџ
p

 
Њ "+(
unknownџџџџџџџџџ 
,__inference_sequential_1_layer_call_fn_81785pAЂ>
7Ђ4
*'
inputsџџџџџџџџџ
p 

 
Њ "+(
unknownџџџџџџџџџ 
,__inference_sequential_1_layer_call_fn_81790pAЂ>
7Ђ4
*'
inputsџџџџџџџџџ
p

 
Њ "+(
unknownџџџџџџџџџн
G__inference_sequential_2_layer_call_and_return_conditional_losses_8129601?@NO]^lm{|KЂH
AЂ>
41
sequential_inputџџџџџџџџџ
p 

 
Њ ",Ђ)
"
tensor_0џџџџџџџџџ

 н
G__inference_sequential_2_layer_call_and_return_conditional_losses_8134901?@NO]^lm{|KЂH
AЂ>
41
sequential_inputџџџџџџџџџ
p

 
Њ ",Ђ)
"
tensor_0џџџџџџџџџ

 г
G__inference_sequential_2_layer_call_and_return_conditional_losses_8153801?@NO]^lm{|AЂ>
7Ђ4
*'
inputsџџџџџџџџџ
p 

 
Њ ",Ђ)
"
tensor_0џџџџџџџџџ

 г
G__inference_sequential_2_layer_call_and_return_conditional_losses_8167001?@NO]^lm{|AЂ>
7Ђ4
*'
inputsџџџџџџџџџ
p

 
Њ ",Ђ)
"
tensor_0џџџџџџџџџ

 З
,__inference_sequential_2_layer_call_fn_8099301?@NO]^lm{|KЂH
AЂ>
41
sequential_inputџџџџџџџџџ
p 

 
Њ "!
unknownџџџџџџџџџ
З
,__inference_sequential_2_layer_call_fn_8124301?@NO]^lm{|KЂH
AЂ>
41
sequential_inputџџџџџџџџџ
p

 
Њ "!
unknownџџџџџџџџџ
Ќ
,__inference_sequential_2_layer_call_fn_81427|01?@NO]^lm{|AЂ>
7Ђ4
*'
inputsџџџџџџџџџ
p 

 
Њ "!
unknownџџџџџџџџџ
Ќ
,__inference_sequential_2_layer_call_fn_81464|01?@NO]^lm{|AЂ>
7Ђ4
*'
inputsџџџџџџџџџ
p

 
Њ "!
unknownџџџџџџџџџ
Э
E__inference_sequential_layer_call_and_return_conditional_losses_80600IЂF
?Ђ<
2/
resizing_inputџџџџџџџџџ
p 

 
Њ "6Ђ3
,)
tensor_0џџџџџџџџџ
 Э
E__inference_sequential_layer_call_and_return_conditional_losses_80606IЂF
?Ђ<
2/
resizing_inputџџџџџџџџџ
p

 
Њ "6Ђ3
,)
tensor_0џџџџџџџџџ
 Ф
E__inference_sequential_layer_call_and_return_conditional_losses_81770{AЂ>
7Ђ4
*'
inputsџџџџџџџџџ
p 

 
Њ "6Ђ3
,)
tensor_0џџџџџџџџџ
 Ф
E__inference_sequential_layer_call_and_return_conditional_losses_81780{AЂ>
7Ђ4
*'
inputsџџџџџџџџџ
p

 
Њ "6Ђ3
,)
tensor_0џџџџџџџџџ
 І
*__inference_sequential_layer_call_fn_80561xIЂF
?Ђ<
2/
resizing_inputџџџџџџџџџ
p 

 
Њ "+(
unknownџџџџџџџџџІ
*__inference_sequential_layer_call_fn_80594xIЂF
?Ђ<
2/
resizing_inputџџџџџџџџџ
p

 
Њ "+(
unknownџџџџџџџџџ
*__inference_sequential_layer_call_fn_81755pAЂ>
7Ђ4
*'
inputsџџџџџџџџџ
p 

 
Њ "+(
unknownџџџџџџџџџ
*__inference_sequential_layer_call_fn_81760pAЂ>
7Ђ4
*'
inputsџџџџџџџџџ
p

 
Њ "+(
unknownџџџџџџџџџЪ
#__inference_signature_wrapper_81390Ђ01?@NO]^lm{|WЂT
Ђ 
MЊJ
H
sequential_input41
sequential_inputџџџџџџџџџ"1Њ.
,
dense_1!
dense_1џџџџџџџџџ
