s.record;

~buf1 = Buffer.read(s, "C:/Users/Δημητρης Γιαν/audio/cruel1 (1).wav");
~buf2 = Buffer.read(s, "C:/Users/Δημητρης Γιαν/audio/cruel1 (2).wav");
~buf3 = Buffer.read(s, "C:/Users/Δημητρης Γιαν/audio/cruel1 (3).wav");
~buf4 = Buffer.read(s, "C:/Users/Δημητρης Γιαν/audio/cruel1 (4).wav");
~buf5 = Buffer.read(s, "C:/Users/Δημητρης Γιαν/audio/cruel1 (5).wav");

(
Pbind(\degree, Pseq([0, 2, 0.1, 2, 0.1, 0.1, 2, 2, 7, 0, 2, 0.1, 2, 0.1, 0.1, 2, 2, 7, 0, 2, 0.1, 2, 0.1, 0.1, 2, 2, 7, 0, 2, 0.1, 2, 0.1, 0.1, 2, 2, 7]),
\dur, 2;
).play(TempoClock(500/500));
)


{PlayBuf.ar(2, ~buf1)}.play;
{PlayBuf.ar(2, ~buf2)}.play;
{PlayBuf.ar(2, ~buf3)}.play;
{PlayBuf.ar(2, ~buf4)}.play;
{PlayBuf.ar(2, ~buf5)}.play;


{PlayBuf.ar(numChannels: 2, bufnum: ~buf3, rate: 0.5, loop: 2)}.play;
{PlayBuf.ar(2, ~buf1, 0.5, loop: 2)}.play;

{PlayBuf.ar(2, ~buf2, Line.kr(0, 0.5), loop: 1)}.play;
{PlayBuf.ar(2, ~buf1, MouseY.kr(1, 2), loop: 1)}.play;
{PlayBuf.ar(2, ~buf5, Line.kr(0.5, 1, 5), loop: 1)}.play;

{PlayBuf.ar(2, ~buf4, −0.5, loop: 1)}.play;

s.recHeaderFormat = "wav";
s.stopRecording;

Platform.recordingsDir;



