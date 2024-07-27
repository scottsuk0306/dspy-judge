import dspy
from dspy.evaluate import Evaluate
from tasks.gsm8k import GSM8KTask


# task_model = dspy.HFClientTGI(...)
# prompt_model = dspy.OpenAI(...)
# task = GSM8KTask()
# Evaluate(devset=task.get_trainset(), metric=task.get_metric(), display_progress=True)
